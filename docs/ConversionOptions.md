## ConversionOptions

### PDFOptions
| Field             | Type    | Description                                                 | Note     |
|-------------------|---------|-------------------------------------------------------------|----------|
| **width**         | Float   | Width in inches                                             | Optional |
| **height**        | Float   | Height in inches                                            | Optional |
| **left_margin**   | Float   | Left margin in inches                                       | Optional |
| **right_margin**  | Float   | Right margin in inches                                      | Optional |
| **top_margin**    | Float   | Top margin in inches                                        | Optional |
| **bottom_margin** | Float   | Bottom margin in inches                                     | Optional |
| **jpeg_quality**  | Integer | Quality in percent                                          | Optional |
| **background**    | String  | CSS background like '#FF0000'. For conversion from SVG only | Optional |

### ImageOptions

-  for JPEG, BMP, PNG, TIFF, GIF formats

| Field             | Type    | Description                                                 | Note     |
|-------------------|---------|-------------------------------------------------------------|----------|
| **width**         | Integer | Width in pixel                                              | Optional |
| **height**        | Integer | Height in pixel                                             | Optional |
| **left_margin**   | Integer | Left margin in pixel                                        | Optional |
| **right_margin**  | Integer | Right margin in pixel                                       | Optional |
| **top_margin**    | Integer | Top margin in pixel                                         | Optional |
| **bottom_margin** | Integer | Bottom margin in pixel                                      | Optional |
| **background**    | String  | CSS background like '#FF0000'. For conversion from SVG only | Optional |

### XPSOptions
| Field             | Type   | Description                                                 | Note     |
|-------------------|--------|-------------------------------------------------------------|----------|
| **width**         | Float  | Width in inches                                             | Optional |
| **height**        | Float  | Height in inches                                            | Optional |
| **left_margin**   | Float  | Left margin in inches                                       | Optional |
| **right_margin**  | Float  | Right margin in inches                                      | Optional |
| **top_margin**    | Float  | Top margin in inches                                        | Optional |
| **bottom_margin** | Float  | Bottom margin in inches                                     | Optional |
| **background**    | String | CSS background like '#FF0000'. For conversion from SVG only | Optional |

### DocOptions
| Field             | Type  | Description                                                  | Note     |
|-------------------|-------|--------------------------------------------------------------|----------|
| **width**         | Float | Width in inches                                              | Optional |
| **height**        | Float | Height in inches                                             | Optional |
| **left_margin**   | Float | Left margin in inches                                        | Optional |
| **right_margin**  | Float | Right margin in inches                                       | Optional |
| **top_margin**    | Float | Top margin in inches                                         | Optional |
| **bottom_margin** | Float | Bottom margin in inches                                      | Optional |

### SvgOptions
| Field               | Type    | Description                                                                                             | Note     |
|---------------------|---------|---------------------------------------------------------------------------------------------------------|----------|
| **error_threshold** | Float   | This parameter defines maximum deviation of points to fitted curve. By default it is 30.                | Optional |
| **max_iterations**  | Integer | This parameter defines number of iteration for least-squares approximation method. By default it is 30. | Optional |
| **colors_limit**    | Integer | The maximum number of colors used to quantize an image. Default value is 25.                            | Optional |
| **line_width**      | Float   | The value of this parameter is affected by the graphics scale. Default value is 1.                      | Optional |


### MarkdownOptions
| Field       | Type | Description                                   | Note     |
|-------------|------|-----------------------------------------------|----------|
| **use_git** | bool | Use git flavor. True or False. Default false. | Optional |
