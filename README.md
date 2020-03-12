# PHP VarDump Check Action

GitHub action for PHP applications to find forgotten variable dumps. 

## Inputs

### `checktype`

**Not Required** The type of the VarDump. Valid values: none, ladybug, tracy, zend, doctrine, symfony, laravel. Default `"none"`.

### `exclude`

**Not Required** The folders to be excluded in check.

### `extensions`

**Not Required** The file extensions to be checked. Default `"php,phpt,php7"`.

## Example usage 1

```yaml
on: [push]

jobs:
  hello_world_job:
    runs-on: ubuntu-latest
    name: Test Itself
    steps:
    - name: Check 1
      id: check1
      uses: umutphp/php-var-dump-check-action@v1
      with:
        checktype: 'laravel'
        exclude: 'vendor,test'
        extensions: 'php'
```

## Example usage 2

```yaml
on: [push]

jobs:
  hello_world_job:
    runs-on: ubuntu-latest
    name: Test Itself
    steps:
    - name: Check 1
      id: check1
      uses: umutphp/php-var-dump-check-action@v1
```

## Example usage 3

```yaml
on: [push]

jobs:
  hello_world_job:
    runs-on: ubuntu-latest
    name: Test Itself
    steps:
    - name: Check 1
      id: check1
      uses: umutphp/php-var-dump-check-action@v1
      with:
        checktype: 'none'
        exclude: 'vendor,test'
        extensions: 'php'
    - name: Check 2
      id: check2
      uses: umutphp/php-var-dump-check-action@v1
      with:
        checktype: 'laravel'
        exclude: 'vendor,test'
        extensions: 'php'
```