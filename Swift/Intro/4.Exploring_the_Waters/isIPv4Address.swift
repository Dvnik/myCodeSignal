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
上傳之後突然想到一個很土炮的解決方案，就是「只要2位數以上的String數字，直接檢查字首」
這樣就完成題目了
*/

func isIPv4Address(inputString: String) -> Bool
{
    var result = true
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
        if result == false// if check result is change to false, break for-loop
        {
            break
        }
        if let ipAddress = Int(ipPart)// check is enable truninto Int
        {
            // check first character if string count over 1
            if ipPart.count > 1 && ipPart.first == "0"
            {
                result = false
            }
            // check address reange is ipv4
            if ipAddress < 0 || ipAddress > 255
            {
                result = false
            }
        }
        else
        {
            result = false
        }
    }
    return result
}

