<style>
    table {
        border-collapse: collapse;
        width: 100%;
    }

    th, td {
        padding: 8px;
        text-align: left;
    }

    th {
        background-color: #f2f2f2;
    }

    tr:nth-child(even) {
        background-color: #eaf2ff; 
    }

    tr:hover {
        background-color: #e6e6e6;
    }
</style>


<h1>Join Company</h1>
<table>
    <thead>
        <tr>
            <th>Company Code 2</th>
            <th>Company Name </th>
            <th>Company Code 1</th>
            <th>Company Name</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($v_joincompanies as $v_joincompany)
            <tr>
                <td>{{ $v_joincompany->company_code_2 }}</td>
                <td>{{ $v_joincompany->company1_name }}</td>
                <td>{{ $v_joincompany->company_code_1 }}</td>
                <td>{{ $v_joincompany->company2_name }}</td>
            </tr>
        @endforeach
    </tbody>
</table>
