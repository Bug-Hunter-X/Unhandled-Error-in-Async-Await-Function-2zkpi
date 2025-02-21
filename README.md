# Unhandled Error in Async/Await Function

This example demonstrates a common error in Swift's async/await functions where an error is thrown but not handled gracefully in the catch block.  The provided `fetchData` function uses async/await to fetch data from a URL. If any error occurs during the process, it throws a `URLError`. However, the `catch` block only prints a generic error message. This isn't ideal for production-ready code, as it lacks specific error handling and debugging information.

The solution improves the error handling by providing more specific error messages and handling different types of errors accordingly.