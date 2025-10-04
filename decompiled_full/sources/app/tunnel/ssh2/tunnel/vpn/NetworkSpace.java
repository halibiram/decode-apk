package app.tunnel.ssh2.tunnel.vpn;

import androidx.annotation.NonNull;
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

/* loaded from: classes.dex */
public class NetworkSpace {
    TreeSet<IpAddress> mIpAddresses = new TreeSet<>();

    /* loaded from: classes.dex */
    public static class IpAddress implements Comparable<IpAddress> {
        private BigInteger firstAddress;
        private final boolean included;
        private boolean isV4;
        private BigInteger lastAddress;
        private BigInteger netAddress;
        public int networkMask;

        public IpAddress(CIDRIP cidrip, boolean z) {
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

        public boolean containsNet(IpAddress ipAddress) {
            boolean z;
            boolean z2;
            BigInteger firstAddress = getFirstAddress();
            BigInteger lastAddress = getLastAddress();
            BigInteger firstAddress2 = ipAddress.getFirstAddress();
            BigInteger lastAddress2 = ipAddress.getLastAddress();
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
            if (!(obj instanceof IpAddress)) {
                return super.equals(obj);
            }
            IpAddress ipAddress = (IpAddress) obj;
            if (this.networkMask == ipAddress.networkMask && ipAddress.getFirstAddress().equals(getFirstAddress())) {
                return true;
            }
            return false;
        }

        public BigInteger getFirstAddress() {
            if (this.firstAddress == null) {
                this.firstAddress = getMaskedAddress(false);
            }
            return this.firstAddress;
        }

        public String getIPv4Address() {
            long longValue = this.netAddress.longValue();
            Locale locale = Locale.US;
            return ((longValue >> 24) % 256) + "." + ((longValue >> 16) % 256) + "." + ((longValue >> 8) % 256) + "." + (longValue % 256);
        }

        public String getIPv6Address() {
            BigInteger bigInteger = this.netAddress;
            String str = null;
            boolean z = true;
            while (bigInteger.compareTo(BigInteger.ZERO) > 0) {
                long longValue = bigInteger.mod(BigInteger.valueOf(65536L)).longValue();
                if (str != null || longValue != 0) {
                    if (str == null && !z) {
                        str = ":";
                    }
                    if (z) {
                        str = String.format(Locale.US, "%x", Long.valueOf(longValue));
                    } else {
                        str = String.format(Locale.US, "%x:%s", Long.valueOf(longValue), str);
                    }
                }
                bigInteger = bigInteger.shiftRight(16);
                z = false;
            }
            if (str == null) {
                return "::";
            }
            return str;
        }

        public BigInteger getLastAddress() {
            if (this.lastAddress == null) {
                this.lastAddress = getMaskedAddress(true);
            }
            return this.lastAddress;
        }

        public IpAddress[] split() {
            IpAddress ipAddress = new IpAddress(getFirstAddress(), this.networkMask + 1, this.included, this.isV4);
            return new IpAddress[]{ipAddress, new IpAddress(ipAddress.getLastAddress().add(BigInteger.ONE), this.networkMask + 1, this.included, this.isV4)};
        }

        @NonNull
        public String toString() {
            if (this.isV4) {
                Locale locale = Locale.US;
                return getIPv4Address() + "/" + this.networkMask;
            }
            Locale locale2 = Locale.US;
            return getIPv6Address() + "/" + this.networkMask;
        }

        @Override // java.lang.Comparable
        public int compareTo(@NonNull IpAddress ipAddress) {
            int compareTo = getFirstAddress().compareTo(ipAddress.getFirstAddress());
            return compareTo != 0 ? compareTo : Integer.compare(ipAddress.networkMask, this.networkMask);
        }

        public IpAddress(Inet6Address inet6Address, int i, boolean z) {
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

        public IpAddress(BigInteger bigInteger, int i, boolean z, boolean z2) {
            this.netAddress = bigInteger;
            this.networkMask = i;
            this.included = z;
            this.isV4 = z2;
        }
    }

    public static void assertTrue(boolean z) {
        if (z) {
        } else {
            throw new IllegalStateException();
        }
    }

    public void addIP(CIDRIP cidrip, boolean z) {
        this.mIpAddresses.add(new IpAddress(cidrip, z));
    }

    public void addIPSplit(CIDRIP cidrip, boolean z) {
        Collections.addAll(this.mIpAddresses, new IpAddress(cidrip, z).split());
    }

    public void addIPv6(Inet6Address inet6Address, int i, boolean z) {
        this.mIpAddresses.add(new IpAddress(inet6Address, i, z));
    }

    public void clear() {
        this.mIpAddresses.clear();
    }

    public TreeSet<IpAddress> generateIPList() {
        PriorityQueue priorityQueue = new PriorityQueue((SortedSet) this.mIpAddresses);
        TreeSet<IpAddress> treeSet = new TreeSet<>();
        IpAddress ipAddress = (IpAddress) priorityQueue.poll();
        if (ipAddress == null) {
            return treeSet;
        }
        while (ipAddress != null) {
            IpAddress ipAddress2 = (IpAddress) priorityQueue.poll();
            if (ipAddress2 != null && ipAddress.getLastAddress().compareTo(ipAddress2.getFirstAddress()) >= 0) {
                if (ipAddress.getFirstAddress().equals(ipAddress2.getFirstAddress()) && ipAddress.networkMask >= ipAddress2.networkMask) {
                    if (ipAddress.included != ipAddress2.included) {
                        IpAddress[] split = ipAddress2.split();
                        if (!priorityQueue.contains(split[1])) {
                            priorityQueue.add(split[1]);
                        }
                        if (!split[0].getLastAddress().equals(ipAddress.getLastAddress()) && !priorityQueue.contains(split[0])) {
                            priorityQueue.add(split[0]);
                        }
                    }
                } else if (ipAddress.included != ipAddress2.included) {
                    IpAddress[] split2 = ipAddress.split();
                    IpAddress ipAddress3 = split2[1];
                    if (ipAddress3.networkMask == ipAddress2.networkMask) {
                        priorityQueue.add(ipAddress2);
                    } else {
                        priorityQueue.add(ipAddress3);
                        priorityQueue.add(ipAddress2);
                    }
                    ipAddress = split2[0];
                }
            } else {
                treeSet.add(ipAddress);
            }
            ipAddress = ipAddress2;
        }
        return treeSet;
    }

    public Collection<IpAddress> getNetworks(boolean z) {
        Vector vector = new Vector();
        Iterator<IpAddress> it = this.mIpAddresses.iterator();
        while (it.hasNext()) {
            IpAddress next = it.next();
            if (next.included == z) {
                vector.add(next);
            }
        }
        return vector;
    }

    public Collection<IpAddress> getPositiveIPList() {
        TreeSet<IpAddress> generateIPList = generateIPList();
        Vector vector = new Vector();
        Iterator<IpAddress> it = generateIPList.iterator();
        while (it.hasNext()) {
            IpAddress next = it.next();
            if (next.included) {
                vector.add(next);
            }
        }
        return vector;
    }
}
