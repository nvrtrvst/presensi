import AuthenticatedLayout from '@/Layouts/AuthenticatedLayout';
import { Link, Head } from '@inertiajs/react';
import Pagination from '@/Components/Pagination';

export default function Dashboard({ auth, users }) {
    return (
        <AuthenticatedLayout
            user={auth.user}
            header={<h2 className="font-semibold text-xl text-gray-800 leading-tight">Users</h2>}
        >
            <Head title="Users" />

            <div className="py-12">
                <div className="max-w-7xl mx-auto sm:px-6 lg:px-8">
                    <div className="flex items-center justify-between mb-6">
                        <label className='font-bold'> Users : {users.total} data.</label>

                        <Link href={route('users.create')}
                            className="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">
                            Create User
                        </Link>
                    </div>
                    <div className="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                        <div className="p-6 text-gray-900">
                            <table className='min-w-full'>
                                <thead>
                                    <tr className='borderr-b-2'>
                                        <th className='px-6 py-3 text-left text-lg font-medium text-black'>Id</th>
                                        <th className='px-6 py-3 text-left text-lg font-medium text-black'>Name</th>
                                        <th className='px-6 py-3 text-left text-lg font-medium text-black'>Email</th>
                                        <th className='px-6 py-3 text-left text-lg font-medium text-black'>Role</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    {users.data.map(({ id, name, email, role }) => (
                                        <tr key={id} className='border-b'>
                                            <td className='px-6 py-4 whitespace-nowrap'>
                                                {id}
                                            </td>
                                            <td className='px-6 py-4 whitespace-nowrap'>
                                                {name}
                                            </td>
                                            <td className='px-6 py-4 whitespace-nowrap'>
                                                {email}
                                            </td>
                                            <td className='px-6 py-4 whitespace-nowrap'>
                                                {role}
                                            </td>
                                            <td className='px-6 py-4 whitespace-nowrap'>
                                                <Link
                                                    className='`inline-flex items-center px-4 py-2 bg-gray-800 border border-transparent rounded-md font-semibold text-xs text-white uppercase tracking-widest hover:bg-gray-700 focus:bg-gray-700 active:bg-gray-900 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2 transition ease-in-out duration-150'
                                                    href={route('users.edit', id)}> Edit</Link>
                                            </td>
                                        </tr>
                                    ))}
                                </tbody>
                            </table>
                            <Pagination links={users.links} />
                        </div>
                    </div>
                </div>
            </div>
        </AuthenticatedLayout>
    );
}