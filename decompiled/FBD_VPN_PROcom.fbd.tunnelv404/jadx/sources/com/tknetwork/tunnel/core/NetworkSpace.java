package com.tknetwork.tunnel.core;

import androidx.annotation.NonNull;
import com.panda912.muddy.ObfuscatedString;
import java.math.BigInteger;
import java.net.Inet6Address;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Locale;
import java.util.PriorityQueue;
import java.util.SortedSet;
import java.util.TreeSet;
import java.util.Vector;

/* loaded from: classes3.dex */
public class NetworkSpace {
    TreeSet<ipAddress> mIpAddresses = new TreeSet<>();

    /* loaded from: classes3.dex */
    public static class ipAddress implements Comparable<ipAddress> {
        private BigInteger firstAddress;
        private final boolean included;
        private boolean isV4;
        private BigInteger lastAddress;
        private BigInteger netAddress;
        public int networkMask;

        public ipAddress(CIDRIP cidrip, boolean z) {
            this.included = z;
            this.netAddress = BigInteger.valueOf(cidrip.getInt());
            this.networkMask = cidrip.len;
            this.isV4 = true;
        }

        private BigInteger getMaskedAddress(boolean z) {
            int i;
            BigInteger bigInteger = this.netAddress;
            if (this.isV4) {
                i = 32 - this.networkMask;
            } else {
                i = 128 - this.networkMask;
            }
            for (int i2 = 0; i2 < i; i2++) {
                if (z) {
                    bigInteger = bigInteger.setBit(i2);
                } else {
                    bigInteger = bigInteger.clearBit(i2);
                }
            }
            return bigInteger;
        }

        public boolean containsNet(ipAddress ipaddress) {
            boolean z;
            boolean z2;
            BigInteger firstAddress = getFirstAddress();
            BigInteger lastAddress = getLastAddress();
            BigInteger firstAddress2 = ipaddress.getFirstAddress();
            BigInteger lastAddress2 = ipaddress.getLastAddress();
            if (firstAddress.compareTo(firstAddress2) != 1) {
                z = true;
            } else {
                z = false;
            }
            if (lastAddress.compareTo(lastAddress2) != -1) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (!z || !z2) {
                return false;
            }
            return true;
        }

        public boolean equals(Object obj) {
            if (obj instanceof ipAddress) {
                ipAddress ipaddress = (ipAddress) obj;
                if (this.networkMask == ipaddress.networkMask && ipaddress.getFirstAddress().equals(getFirstAddress())) {
                    return true;
                }
                return false;
            }
            return super.equals(obj);
        }

        public BigInteger getFirstAddress() {
            if (this.firstAddress == null) {
                this.firstAddress = getMaskedAddress(false);
            }
            return this.firstAddress;
        }

        public String getIPv4Address() {
            long longValue = this.netAddress.longValue();
            return String.format(Locale.US, new ObfuscatedString(new long[]{4628495423336980004L, -407162206436708442L, 5694270469217010394L}).toString(), Long.valueOf((longValue >> 24) % 256), Long.valueOf((longValue >> 16) % 256), Long.valueOf((longValue >> 8) % 256), Long.valueOf(longValue % 256));
        }

        public String getIPv6Address() {
            BigInteger bigInteger = this.netAddress;
            String str = null;
            boolean z = true;
            while (bigInteger.compareTo(BigInteger.ZERO) == 1) {
                long longValue = bigInteger.mod(BigInteger.valueOf(65536L)).longValue();
                if (str != null || longValue != 0) {
                    if (str == null && !z) {
                        str = new ObfuscatedString(new long[]{-669978802792612709L, -4398985189480943056L}).toString();
                    }
                    if (z) {
                        str = String.format(Locale.US, new ObfuscatedString(new long[]{-1081316437121475173L, -9061991784232449898L}).toString(), Long.valueOf(longValue), str);
                    } else {
                        str = String.format(Locale.US, new ObfuscatedString(new long[]{-1268044345363070462L, -2856254706877125479L}).toString(), Long.valueOf(longValue), str);
                    }
                }
                bigInteger = bigInteger.shiftRight(16);
                z = false;
            }
            if (str == null) {
                return new ObfuscatedString(new long[]{-4496272529733735620L, -5244491271895411801L}).toString();
            }
            return str;
        }

        public BigInteger getLastAddress() {
            if (this.lastAddress == null) {
                this.lastAddress = getMaskedAddress(true);
            }
            return this.lastAddress;
        }

        public ipAddress[] split() {
            ipAddress ipaddress = new ipAddress(getFirstAddress(), this.networkMask + 1, this.included, this.isV4);
            return new ipAddress[]{ipaddress, new ipAddress(ipaddress.getLastAddress().add(BigInteger.ONE), this.networkMask + 1, this.included, this.isV4)};
        }

        public String toString() {
            if (this.isV4) {
                return String.format(Locale.US, new ObfuscatedString(new long[]{6111231832753730059L, 8993553603240295535L}).toString(), getIPv4Address(), Integer.valueOf(this.networkMask));
            }
            return String.format(Locale.US, new ObfuscatedString(new long[]{1828505002597448554L, -6942537921964817759L}).toString(), getIPv6Address(), Integer.valueOf(this.networkMask));
        }

        @Override // java.lang.Comparable
        public int compareTo(@NonNull ipAddress ipaddress) {
            int compareTo = getFirstAddress().compareTo(ipaddress.getFirstAddress());
            if (compareTo != 0) {
                return compareTo;
            }
            int i = this.networkMask;
            int i2 = ipaddress.networkMask;
            if (i > i2) {
                return -1;
            }
            return i2 == i ? 0 : 1;
        }

        public ipAddress(Inet6Address inet6Address, int i, boolean z) {
            this.networkMask = i;
            this.included = z;
            this.netAddress = BigInteger.ZERO;
            int length = inet6Address.getAddress().length;
            int i2 = 128;
            for (int i3 = 0; i3 < length; i3++) {
                i2 -= 8;
                this.netAddress = this.netAddress.add(BigInteger.valueOf(r6[i3] & 255).shiftLeft(i2));
            }
        }

        public ipAddress(BigInteger bigInteger, int i, boolean z, boolean z2) {
            this.netAddress = bigInteger;
            this.networkMask = i;
            this.included = z;
            this.isV4 = z2;
        }
    }

    public void addIP(CIDRIP cidrip, boolean z) {
        this.mIpAddresses.add(new ipAddress(cidrip, z));
    }

    public void addIPSplit(CIDRIP cidrip, boolean z) {
        Collections.addAll(this.mIpAddresses, new ipAddress(cidrip, z).split());
    }

    public void addIPv6(Inet6Address inet6Address, int i, boolean z) {
        this.mIpAddresses.add(new ipAddress(inet6Address, i, z));
    }

    public void clear() {
        this.mIpAddresses.clear();
    }

    public TreeSet<ipAddress> generateIPList() {
        PriorityQueue priorityQueue = new PriorityQueue((SortedSet) this.mIpAddresses);
        TreeSet<ipAddress> treeSet = new TreeSet<>();
        ipAddress ipaddress = (ipAddress) priorityQueue.poll();
        if (ipaddress == null) {
            return treeSet;
        }
        while (ipaddress != null) {
            ipAddress ipaddress2 = (ipAddress) priorityQueue.poll();
            if (ipaddress2 != null && ipaddress.getLastAddress().compareTo(ipaddress2.getFirstAddress()) != -1) {
                if (ipaddress.getFirstAddress().equals(ipaddress2.getFirstAddress()) && ipaddress.networkMask >= ipaddress2.networkMask) {
                    if (ipaddress.included != ipaddress2.included) {
                        ipAddress[] split = ipaddress2.split();
                        if (!priorityQueue.contains(split[1])) {
                            priorityQueue.add(split[1]);
                        }
                        if (!split[0].getLastAddress().equals(ipaddress.getLastAddress()) && !priorityQueue.contains(split[0])) {
                            priorityQueue.add(split[0]);
                        }
                    }
                } else if (ipaddress.included != ipaddress2.included) {
                    ipAddress[] split2 = ipaddress.split();
                    ipAddress ipaddress3 = split2[1];
                    if (ipaddress3.networkMask == ipaddress2.networkMask) {
                        priorityQueue.add(ipaddress2);
                    } else {
                        priorityQueue.add(ipaddress3);
                        priorityQueue.add(ipaddress2);
                    }
                    ipaddress = split2[0];
                }
            } else {
                treeSet.add(ipaddress);
            }
            ipaddress = ipaddress2;
        }
        return treeSet;
    }

    public Collection<ipAddress> getNetworks(boolean z) {
        Vector vector = new Vector();
        Iterator<ipAddress> it = this.mIpAddresses.iterator();
        while (it.hasNext()) {
            ipAddress next = it.next();
            if (next.included == z) {
                vector.add(next);
            }
        }
        return vector;
    }

    public Collection<ipAddress> getPositiveIPList() {
        TreeSet<ipAddress> generateIPList = generateIPList();
        Vector vector = new Vector();
        Iterator<ipAddress> it = generateIPList.iterator();
        while (it.hasNext()) {
            ipAddress next = it.next();
            if (next.included) {
                vector.add(next);
            }
        }
        return vector;
    }
}
