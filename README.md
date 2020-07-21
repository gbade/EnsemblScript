# EnsemblScript
A simple script written in Perl to convert and map coordinates on chromosome from different human genome assemblies via the Ensembl API

# Summary
The perl script fetches the latest human data from Ensembl release and the Perl API to convert coordinates on chromosome. (e.g chromosome 10 from 25000 to 30000 ) to the same region in GRCh37.

### To execute a script
Type the name of the script, with three parameters - the first assembly, the region and the second genome assembly

### Sample command line request
```
perl .\ensembl_chromosome.pl GRCh38 X:25000..30000 GRCh37
```

### Response
```
Running under perl version 5.014002 for MSWin32
# Current time local: Tue Jul 21 03:17:17 2020
# Current time GMT:   Tue Jul 21 02:17:17 2020
# Using Test.pm version 1.25_02
fetching the latest human data from Ensembl release and the Perl API, to convert coordinates on chromosome


cli arguments:
base_url: http://rest.ensembl.org
asm_one: GRCh38
region: X:25000..30000
asm_two: GRCh37
request URL: http://rest.ensembl.org/map/human/GRCh38/X:25000..30000/GRCh37?
{
  'mappings' => [
    {
      'original' => {
        'seq_region_name' => 'X',
        'strand' => 1,
        'coord_system' => 'chromosome',
        'assembly' => 'GRCh38',
        'start' => 25000,
        'end' => 30000
      },
      'mapped' => {
        'seq_region_name' => 'X',
        'strand' => 1,
        'coord_system' => 'chromosome',
        'assembly' => 'GRCh37',
        'end' => 80000,
        'start' => 75000
      }
    }
  ]
}
```

