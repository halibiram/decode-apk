package com.trilead.ssh2;

/* loaded from: classes3.dex */
public class SFTPv3FileAttributes {
    public Long size = null;
    public Integer uid = null;
    public Integer gid = null;
    public Integer permissions = null;
    public Long atime = null;
    public Long mtime = null;

    public String getOctalPermissions() {
        Integer num = this.permissions;
        if (num == null) {
            return null;
        }
        String num2 = Integer.toString(num.intValue() & 65535, 8);
        StringBuffer stringBuffer = new StringBuffer();
        for (int length = 7 - num2.length(); length > 0; length--) {
            stringBuffer.append('0');
        }
        stringBuffer.append(num2);
        return stringBuffer.toString();
    }

    public boolean isDirectory() {
        Integer num = this.permissions;
        if (num == null || (num.intValue() & 16384) == 0) {
            return false;
        }
        return true;
    }

    public boolean isRegularFile() {
        Integer num = this.permissions;
        if (num == null || (num.intValue() & 32768) == 0) {
            return false;
        }
        return true;
    }

    public boolean isSymlink() {
        Integer num = this.permissions;
        if (num == null || (num.intValue() & 40960) == 0) {
            return false;
        }
        return true;
    }
}
