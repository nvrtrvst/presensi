import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout";
import { Link, Head } from "@inertiajs/react";
import InputError from "@/Components/InputError";
import InputLabel from "@/Components/InputLabel";
import PrimaryButton from "@/Components/PrimaryButton";
import TextInput from "@/Components/TextInput";
import { useForm } from "@inertiajs/react";
import { Transition } from "@headlessui/react";
import Selectbox from "@/Components/Selectbox";
import roles from "@/data/roles.json";
import { useState, useEffect } from "react";
import { Loader } from "@googlemaps/js-api-loader";

export default function SubmitAttendance() {

    const loader = new Loader({
        apiKey: import.meta.env.API_KEY,
        version: "weekly",
        libraries: ["geocoder"],
    })

    const [transitioning, setTransitioning] = useState(false);

    const { data, setData, post, transform, errors, processing, recentlySuccessful } = useForm({
        status: "attend",
        description: "",
        latitude: "",
        longitude: "",
        prepareData: "",
    });

    const getLatLong = (e) => {
        e.preventDefault();
        navigator.geolocation.getCurrentPosition(
            function (position) {
                // console.log("Latitude is :", position.coords.latitude);
                // console.log("Longitude is :", position.coords.longitude);

                // let objLocation = {
                //     latitude: position.coords.latitude,
                //     longitude: position.coords.longitude
                // }
                // setData("prepareData", objLocation);
                createGeocoder(position.coords);
            },
            function () {
                alert("Cannot get current location");
            }
        )
    }

    function createGeocoder(coordinates) {
        loader.load().then(() => {
            const geocoder = new google.maps.Geocoder();

            geocoder
                .geocode({
                    location: {
                        lat: coordinates.latitude,
                        lng: coordinates.longitude,
                    },
                })
                .then((response) => {
                    console.log(response);
                });
        });
    }

    const submit = (e) => {
        e.preventDefault();

        // navigator.geolocation.getCurrentPosition(
        //     function (position) {
        //         console.log("Latitude is :", position.coords.latitude);
        //         console.log("Longitude is :", position.coords.longitude);

        //         let objLocation = {
        //             latitude: position.coords.latitude,
        //             longitude: position.coords.longitude
        //         }

        //         setData("prepareData", objLocation);
        //     },
        //     function (error) {
        //         console.log(error);
        //     }
        // )

    };

    useEffect(() => {
        if (
            data.prepareData.hasOwnProperty("latitude") &&
            data.prepareData.hasOwnProperty("longitude")
        ) {
            //distrctering
            transform((data) => ({
                ...data.prepareData, //latitude and longitude
                status: data.status,
                description: data.description
            }));

            post(route("attendances.submit"), {
                preserveScroll: true,
                onSuccess: () => {
                    alert('Presensi Berhasil');
                },
                onError: (errors) => {
                    console.log(errors);
                },
            });
        }
    }, [data.prepareData]);

    useEffect(() => {
        if (data.status !== "attend") {
            setTransitioning(true);
        } else {
            setTransitioning(false);
        }
    }
        , [data.status]);

    return (
        <form onSubmit={getLatLong} className="mt-6 space-y-6">
            <div>
                <InputLabel htmlFor="info" value="Silakan lakukan presensi" />


                <Selectbox
                    onChange={(e) =>
                        setData("status", e.target.value)
                    }
                    className="w-full"
                    options={[
                        { value: "attend", label: "Hadir" },
                        { value: "sick", label: "Sakit" },
                        { value: "leave", label: "Cuti" },
                        { value: "permit", label: "Izin" },
                        { value: "business_trip", label: "Perjalanan Dinas" },
                        { value: "remote", label: "Kerja Remote (Work From Home)" },
                    ]}
                />
                <InputError className="mt-2" message={errors.status} />
            </div>

            <Transition
                show={transitioning}
                enter="transition ease-in-out"
                enterFrom="opacity-0"
                leave="transition ease-in-out"
                leaveTo="opacity-0"
            >

                <div>
                    <InputLabel htmlFor="description" value="Deskripsi" />


                    <TextInput
                        onChange={(e) =>
                            setData("description", e.target.value)}
                        className="w-full"
                    />
                    <InputError className="mt-2" message={errors.description} />
                </div>
            </Transition>

            <div className="flex items-center gap-4">
                <PrimaryButton disabled={processing}>Presensi</PrimaryButton>


            </div>
        </form>
    );
}
