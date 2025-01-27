export default function Selectbox({
    className = '',
    options, currentValue,
    ...props }) {
    return (
        <select
            {...props}
            defaultValue={currentValue}
            className={
                'rounded border-gray-300 shadow-sm focus:ring-indigo-500 w-full'
            }
        >
            {
                options.map((option, index) => (
                    <option key={index} value={option.value}>
                        {option.label}
                    </option>
                ))
            }
        </select>

    )
}
