# phpDocumentor Github Action

Can be used to generate documentation for PHP applications up to PHP version 7.0

## Inputs

### `dir`

Project Root. Default `"."`.

## Example usage

Create `phpdoc.dist.xml` in your root folder and use the step into your Github workflow:

```yaml
- name: PhpDocumentor
  uses: gpupo/actions-phpDocumentor@1.0
  with:
    dir: './'
```
