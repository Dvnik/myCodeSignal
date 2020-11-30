/*
An IP address is a numerical label assigned to each device (e.g., computer, printer) participating in a computer network that uses the Internet Protocol for communication. There are two versions of the Internet protocol, and thus two versions of addresses. One of them is the IPv4 address.

Given a string, find out if it satisfies the IPv4 address naming rules.

Example

For inputString = "172.16.254.1", the output should be isIPv4Address(inputString) = true;

For inputString = "172.316.254.1", the output should be isIPv4Address(inputString) = false.

316 is not in range [0, 255].

For inputString = ".254.255.0", the output should be isIPv4Address(inputString) = false.

There is no first number.

檢查輸入的字串是否為合格的ipv4字串
目前想不出如何判斷「前面補0的數字就不是合法的數字段」，先上傳
*/

func isIPv4Address(inputString: String) -> Bool
{
    var result = true
    // Tests passed: 18/21.
    // Because my function can't check ["00" or "01" not a number].
    // if ipv4 address no 4 part, it is not ipv4 address
    // check dot count
    var dotCount = 0
    for str in inputString
    {
        if str == "."
        {
            dotCount+=1
        }
    }
    if dotCount != 3
    {
        return false
    }
    // check split part nums
    let splitStr = inputString.split(separator: ".")
    if splitStr.count != 4
    {
        return false
    }
    // Check IP Range
    for ipPart in splitStr
    {
        if let ipAddress = Int(ipPart)
        {
            print(ipAddress)
            if ipAddress < 0 || ipAddress > 255
            {
                result = false
                break
            }
        }
        else
        {
            result = false
        }
    }


    return result

}
