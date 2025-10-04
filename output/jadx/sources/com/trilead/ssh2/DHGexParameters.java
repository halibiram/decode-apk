package com.trilead.ssh2;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes3.dex */
public class DHGexParameters {
    private static final int MAX_ALLOWED = 8192;
    private static final int MIN_ALLOWED = 1024;
    private final int max_group_len;
    private final int min_group_len;
    private final int pref_group_len;

    public DHGexParameters() {
        this(1024, 2048, 4096);
    }

    public int getMax_group_len() {
        return this.max_group_len;
    }

    public int getMin_group_len() {
        return this.min_group_len;
    }

    public int getPref_group_len() {
        return this.pref_group_len;
    }

    public DHGexParameters(int i) {
        if (i >= 1024 && i <= 8192) {
            this.pref_group_len = i;
            this.min_group_len = 0;
            this.max_group_len = 0;
            return;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-5752572710446811563L, -6154514673776243585L, 4092925406191263300L, -6692555668109926532L, 138332602770430036L}).toString());
    }

    public DHGexParameters(int i, int i2, int i3) {
        if (i < 1024 || i > 8192) {
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{-2565862787196778267L, 855257988662977518L, 2277513607519814747L, 1374721300658355200L, 5840746202441630333L}).toString());
        }
        if (i2 < 1024 || i2 > 8192) {
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{-4055708377895195140L, 135615887173336116L, -2392436406985288283L, 3176626995316248004L, -5819846003559979650L}).toString());
        }
        if (i3 < 1024 || i3 > 8192) {
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{994012107062910638L, 3651320655754444038L, -1854771117327849255L, 1869651372833043016L, 4595160231787488268L}).toString());
        }
        if (i2 >= i && i2 <= i3) {
            this.min_group_len = i;
            this.pref_group_len = i2;
            this.max_group_len = i3;
            return;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{2785524266034172519L, -2776329048387391037L, -7385258288630837465L, -5326805027270501344L, 8277277155019975341L, 905692118427670841L, -5854625832635272562L}).toString());
    }
}
