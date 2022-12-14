# AsposeHtml::OperationResult

## Properties
| Name            | Type        | Description                                                        | Notes                                                   |
|-----------------|-------------|--------------------------------------------------------------------|---------------------------------------------------------|
| **code**        | **Integer** | HTTP result code.                                                  |                                                         |
| **id**          | **String**  | Id of operation.                                                   |                                                         |
| **status**      | **String**  | Status ("pending", "running", "completed", "faulted", "canceled"). |                                                         |
| **description** | **String**  | Description of error.                                              |                                                         |
| **links**       | **Hash**    | Reserved.                                                          |                                                         |
| **file**        | **String**  | Full path to the result file.                                      | If more than one, it's a zip file with the result files |