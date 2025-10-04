package com.google.common.net;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.CharMatcher;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.base.Strings;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.Immutable;
import com.panda912.muddy.ObfuscatedString;
import java.io.Serializable;
import javax.annotation.CheckForNull;

@Immutable
@GwtCompatible
@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public final class HostAndPort implements Serializable {
    private static final int NO_PORT = -1;
    private static final long serialVersionUID = 0;
    private final boolean hasBracketlessColons;
    private final String host;
    private final int port;

    private HostAndPort(String str, int i, boolean z) {
        this.host = str;
        this.port = i;
        this.hasBracketlessColons = z;
    }

    public static HostAndPort fromHost(String str) {
        HostAndPort fromString = fromString(str);
        Preconditions.checkArgument(!fromString.hasPort(), new ObfuscatedString(new long[]{6869127681964476854L, 7162468939379243025L, 4922053469054123817L, 82802542837089166L}).toString(), str);
        return fromString;
    }

    public static HostAndPort fromParts(String str, int i) {
        Preconditions.checkArgument(isValidPort(i), new ObfuscatedString(new long[]{-4911065371167380697L, 175953525202416438L, -1181528413342761596L, -3998331836368819031L}).toString(), i);
        HostAndPort fromString = fromString(str);
        Preconditions.checkArgument(!fromString.hasPort(), new ObfuscatedString(new long[]{-1454479884237150013L, 7103086309698036913L, 3761078229266712299L, 8144590323811292138L}).toString(), str);
        return new HostAndPort(fromString.host, i, fromString.hasBracketlessColons);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0050  */
    @CanIgnoreReturnValue
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static HostAndPort fromString(String str) {
        boolean z;
        String str2;
        boolean z2;
        String str3;
        String substring;
        String str4;
        Preconditions.checkNotNull(str);
        int i = -1;
        boolean z3 = true;
        if (str.startsWith(new ObfuscatedString(new long[]{-7880129208628279867L, 4110804996994756136L}).toString())) {
            String[] hostAndPortFromBracketedHost = getHostAndPortFromBracketedHost(str);
            substring = hostAndPortFromBracketedHost[0];
            str3 = hostAndPortFromBracketedHost[1];
        } else {
            int indexOf = str.indexOf(58);
            if (indexOf >= 0) {
                int i2 = indexOf + 1;
                if (str.indexOf(58, i2) == -1) {
                    substring = str.substring(0, indexOf);
                    str3 = str.substring(i2);
                }
            }
            if (indexOf >= 0) {
                z = true;
            } else {
                z = false;
            }
            str2 = str;
            z2 = z;
            str3 = null;
            if (!Strings.isNullOrEmpty(str3)) {
                if (str3.startsWith(new ObfuscatedString(new long[]{-4608177044396115348L, 8823023446372220350L}).toString()) || !CharMatcher.ascii().matchesAllOf(str3)) {
                    z3 = false;
                }
                Preconditions.checkArgument(z3, new ObfuscatedString(new long[]{5698557427289038904L, -5702233260182886351L, 5173390925830474207L, -2070909638858225843L, -2269667206659842974L}).toString(), str);
                try {
                    i = Integer.parseInt(str3);
                    Preconditions.checkArgument(isValidPort(i), new ObfuscatedString(new long[]{-1773573938968197575L, 5853750818332162442L, -6346900009993181259L, -4983863673590816763L, -287377932133660178L}).toString(), str);
                } catch (NumberFormatException unused) {
                    String obfuscatedString = new ObfuscatedString(new long[]{-565895399848238417L, 3039321653032098484L, 6045224670565289583L, -5781415575348981409L, -3630878662511238806L}).toString();
                    if (str.length() != 0) {
                        str4 = obfuscatedString.concat(str);
                    } else {
                        str4 = new String(obfuscatedString);
                    }
                    throw new IllegalArgumentException(str4);
                }
            }
            return new HostAndPort(str2, i, z2);
        }
        str2 = substring;
        z2 = false;
        if (!Strings.isNullOrEmpty(str3)) {
        }
        return new HostAndPort(str2, i, z2);
    }

    private static String[] getHostAndPortFromBracketedHost(String str) {
        boolean z;
        boolean z2;
        boolean z3 = false;
        if (str.charAt(0) == '[') {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z, new ObfuscatedString(new long[]{-6162834359879127459L, 374789290943546608L, -5919116120475430848L, 3143693091779319180L, -1794573112423282115L, 6997437438992502760L, -2408805306292033171L, 6986520767858719269L}).toString(), str);
        int indexOf = str.indexOf(58);
        int lastIndexOf = str.lastIndexOf(93);
        if (indexOf > -1 && lastIndexOf > indexOf) {
            z2 = true;
        } else {
            z2 = false;
        }
        Preconditions.checkArgument(z2, new ObfuscatedString(new long[]{1626754043531785913L, 3424849113853121616L, 4255757259163374503L, 4613860548317006223L, 7857897782075934690L}).toString(), str);
        String substring = str.substring(1, lastIndexOf);
        int i = lastIndexOf + 1;
        if (i == str.length()) {
            return new String[]{substring, new ObfuscatedString(new long[]{-7239910433744047192L}).toString()};
        }
        if (str.charAt(i) == ':') {
            z3 = true;
        }
        Preconditions.checkArgument(z3, new ObfuscatedString(new long[]{-3363705541511267559L, -347332937061793537L, 1818821258425867829L, -8846988399083065349L, -865369071461095010L, -8302718063537562363L, -5093926389099256124L}).toString(), str);
        int i2 = lastIndexOf + 2;
        for (int i3 = i2; i3 < str.length(); i3++) {
            Preconditions.checkArgument(Character.isDigit(str.charAt(i3)), new ObfuscatedString(new long[]{348638040159991924L, -3704306772410218959L, 8743189702773249654L, -3408908684594666205L}).toString(), str);
        }
        return new String[]{substring, str.substring(i2)};
    }

    private static boolean isValidPort(int i) {
        return i >= 0 && i <= 65535;
    }

    public boolean equals(@CheckForNull Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HostAndPort)) {
            return false;
        }
        HostAndPort hostAndPort = (HostAndPort) obj;
        if (Objects.equal(this.host, hostAndPort.host) && this.port == hostAndPort.port) {
            return true;
        }
        return false;
    }

    public String getHost() {
        return this.host;
    }

    public int getPort() {
        Preconditions.checkState(hasPort());
        return this.port;
    }

    public int getPortOrDefault(int i) {
        if (hasPort()) {
            return this.port;
        }
        return i;
    }

    public boolean hasPort() {
        if (this.port >= 0) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return Objects.hashCode(this.host, Integer.valueOf(this.port));
    }

    @CanIgnoreReturnValue
    public HostAndPort requireBracketsForIPv6() {
        Preconditions.checkArgument(!this.hasBracketlessColons, new ObfuscatedString(new long[]{5264275608669302281L, -3540857619319504641L, 2994448197785657158L, 6170887775393865751L, 5200024166956084904L, -652458752649373333L}).toString(), this.host);
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(this.host.length() + 8);
        if (this.host.indexOf(58) >= 0) {
            sb.append('[');
            sb.append(this.host);
            sb.append(']');
        } else {
            sb.append(this.host);
        }
        if (hasPort()) {
            sb.append(':');
            sb.append(this.port);
        }
        return sb.toString();
    }

    public HostAndPort withDefaultPort(int i) {
        Preconditions.checkArgument(isValidPort(i));
        if (hasPort()) {
            return this;
        }
        return new HostAndPort(this.host, i, this.hasBracketlessColons);
    }
}
