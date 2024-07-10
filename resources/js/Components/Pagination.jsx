import { Link } from "@inertiajs/react";

export default function Pagination({ links }) {
    return (
        <div className="flex mt-8 space-x-1">
            {links.map((link, index) => (
                <Link
                    key={index}
                    href={link.url}
                    className={
                        link.active
                            ? "relative z-10 inline-flex items-center border border-indigo-500 bg-indigo-50 px-4 py-2 text-sm font-medium text-indigo-600 focus:z-20"
                            : "relative inline-flex items-center border border-gray-300 bg-white px-4 py-2 text-sm font-medium text-gray-700 hover:bg-gray-50 focus:z-20"
                    }
                    dangerouslySetInnerHTML={{ __html: link.label }}
                >
                </Link>
            ))}
        </div>
    )
}
