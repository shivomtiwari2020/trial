public static String addStrings(String a, String b) {
    StringBuilder sumString = new StringBuilder();
    int i = a.length() - 1;
    int j = b.length() - 1;
    int carry = 0;

    while (i >= 0 || j >= 0) {
        int d1 = (i >= 0) ? a.charAt(i--) - '0' : 0;
        int d2 = (j >= 0) ? b.charAt(j--) - '0' : 0;
        int sum = d1 + d2 + carry;

        if (sum >= 10) {
            carry = sum / 10;
            sum = sum % 10;
        } else {
            carry = 0;
        }

        sumString.insert(0, sum);
    }

    if (carry > 0) {
        sumString.insert(0, carry);
    }

    return sumString.toString();
}   