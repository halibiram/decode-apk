package com.google.common.cache;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Ascii;
import com.google.common.base.Equivalence;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import com.google.common.base.Ticker;
import com.google.common.cache.AbstractCache;
import com.google.common.cache.LocalCache;
import com.google.errorprone.annotations.CheckReturnValue;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;

@ElementTypesAreNonnullByDefault
@GwtCompatible(emulated = true)
/* loaded from: classes2.dex */
public final class CacheBuilder<K, V> {
    private static final int DEFAULT_CONCURRENCY_LEVEL = 4;
    private static final int DEFAULT_EXPIRATION_NANOS = 0;
    private static final int DEFAULT_INITIAL_CAPACITY = 16;
    private static final int DEFAULT_REFRESH_NANOS = 0;
    static final int UNSET_INT = -1;
    Equivalence<Object> keyEquivalence;
    LocalCache.Strength keyStrength;
    RemovalListener<? super K, ? super V> removalListener;
    Ticker ticker;
    Equivalence<Object> valueEquivalence;
    LocalCache.Strength valueStrength;
    Weigher<? super K, ? super V> weigher;
    static final Supplier<? extends AbstractCache.StatsCounter> NULL_STATS_COUNTER = Suppliers.ofInstance(new AbstractCache.StatsCounter() { // from class: com.google.common.cache.CacheBuilder.1
        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public void recordEviction() {
        }

        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public void recordHits(int i) {
        }

        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public void recordLoadException(long j) {
        }

        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public void recordLoadSuccess(long j) {
        }

        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public void recordMisses(int i) {
        }

        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public CacheStats snapshot() {
            return CacheBuilder.EMPTY_STATS;
        }
    });
    static final CacheStats EMPTY_STATS = new CacheStats(0, 0, 0, 0, 0, 0);
    static final Supplier<AbstractCache.StatsCounter> CACHE_STATS_COUNTER = new Supplier<AbstractCache.StatsCounter>() { // from class: com.google.common.cache.CacheBuilder.2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.common.base.Supplier
        public AbstractCache.StatsCounter get() {
            return new AbstractCache.SimpleStatsCounter();
        }
    };
    static final Ticker NULL_TICKER = new Ticker() { // from class: com.google.common.cache.CacheBuilder.3
        @Override // com.google.common.base.Ticker
        public long read() {
            return 0L;
        }
    };
    private static final Logger logger = Logger.getLogger(CacheBuilder.class.getName());
    boolean strictParsing = true;
    int initialCapacity = -1;
    int concurrencyLevel = -1;
    long maximumSize = -1;
    long maximumWeight = -1;
    long expireAfterWriteNanos = -1;
    long expireAfterAccessNanos = -1;
    long refreshNanos = -1;
    Supplier<? extends AbstractCache.StatsCounter> statsCounterSupplier = NULL_STATS_COUNTER;

    /* loaded from: classes2.dex */
    public enum NullListener implements RemovalListener<Object, Object> {
        INSTANCE;

        @Override // com.google.common.cache.RemovalListener
        public void onRemoval(RemovalNotification<Object, Object> removalNotification) {
        }
    }

    /* loaded from: classes2.dex */
    public enum OneWeigher implements Weigher<Object, Object> {
        INSTANCE;

        @Override // com.google.common.cache.Weigher
        public int weigh(Object obj, Object obj2) {
            return 1;
        }
    }

    private CacheBuilder() {
    }

    private void checkNonLoadingCache() {
        boolean z;
        if (this.refreshNanos == -1) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkState(z, new ObfuscatedString(new long[]{-4487130660325524850L, -379159538455900735L, 4892674161269968073L, 1544202970338861874L, 6751256238370297782L, 3801199614256248678L, 4847135271350403616L}).toString());
    }

    private void checkWeightWithWeigher() {
        boolean z = false;
        if (this.weigher == null) {
            if (this.maximumWeight == -1) {
                z = true;
            }
            Preconditions.checkState(z, new ObfuscatedString(new long[]{8371299377751353932L, 8150894550446070696L, 930992304076567650L, 2932447453659359462L, 5632332733578352306L}).toString());
        } else if (this.strictParsing) {
            if (this.maximumWeight != -1) {
                z = true;
            }
            Preconditions.checkState(z, new ObfuscatedString(new long[]{-4398332905212391099L, 3361368683156011604L, 1095478661325592337L, -1470596989425502064L, -5216054869116458256L}).toString());
        } else if (this.maximumWeight == -1) {
            logger.log(Level.WARNING, new ObfuscatedString(new long[]{810199347854427528L, 954406286420767541L, 3662137182665433430L, 5063980337767051L, 9020319794022017137L, -2063983912543167146L, -7841953087737437639L}).toString());
        }
    }

    @CheckReturnValue
    @GwtIncompatible
    public static CacheBuilder<Object, Object> from(CacheBuilderSpec cacheBuilderSpec) {
        return cacheBuilderSpec.toCacheBuilder().lenientParsing();
    }

    @CheckReturnValue
    public static CacheBuilder<Object, Object> newBuilder() {
        return new CacheBuilder<>();
    }

    @CheckReturnValue
    public <K1 extends K, V1 extends V> LoadingCache<K1, V1> build(CacheLoader<? super K1, V1> cacheLoader) {
        checkWeightWithWeigher();
        return new LocalCache.LocalLoadingCache(this, cacheLoader);
    }

    public CacheBuilder<K, V> concurrencyLevel(int i) {
        boolean z;
        boolean z2 = false;
        if (this.concurrencyLevel == -1) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkState(z, new ObfuscatedString(new long[]{-3356645885127845712L, -3914089400480111556L, 3477619541458922176L, 3977798397824102671L, -8432288097386605766L, -6978406790607226235L}).toString(), this.concurrencyLevel);
        if (i > 0) {
            z2 = true;
        }
        Preconditions.checkArgument(z2);
        this.concurrencyLevel = i;
        return this;
    }

    public CacheBuilder<K, V> expireAfterAccess(long j, TimeUnit timeUnit) {
        boolean z;
        boolean z2 = false;
        if (this.expireAfterAccessNanos == -1) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkState(z, new ObfuscatedString(new long[]{6949450515083153034L, 1203879714942687895L, -392953077489310872L, 1327809255104056891L, 7558159158528133759L, 6962938644327889581L, -3422013437017421585L}).toString(), this.expireAfterAccessNanos);
        if (j >= 0) {
            z2 = true;
        }
        Preconditions.checkArgument(z2, new ObfuscatedString(new long[]{3624636400961562680L, 2118641346681263968L, 3447086485919570742L, -7912587343784997085L, -4685821801916125878L, -6092160646807067257L}).toString(), j, timeUnit);
        this.expireAfterAccessNanos = timeUnit.toNanos(j);
        return this;
    }

    public CacheBuilder<K, V> expireAfterWrite(long j, TimeUnit timeUnit) {
        boolean z;
        boolean z2 = false;
        if (this.expireAfterWriteNanos == -1) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkState(z, new ObfuscatedString(new long[]{-5393486823811350740L, -4436203139232412669L, -5130422404246784181L, -8491637308428419636L, 7408697922875117725L, -6034615397487189333L, -4038157261519682638L}).toString(), this.expireAfterWriteNanos);
        if (j >= 0) {
            z2 = true;
        }
        Preconditions.checkArgument(z2, new ObfuscatedString(new long[]{-7900786249965016218L, 63973459611023661L, 3605817053530838976L, -7457110274523635929L, 4335784735086778957L, -1709572692904432457L}).toString(), j, timeUnit);
        this.expireAfterWriteNanos = timeUnit.toNanos(j);
        return this;
    }

    public int getConcurrencyLevel() {
        int i = this.concurrencyLevel;
        if (i == -1) {
            return 4;
        }
        return i;
    }

    public long getExpireAfterAccessNanos() {
        long j = this.expireAfterAccessNanos;
        if (j == -1) {
            return 0L;
        }
        return j;
    }

    public long getExpireAfterWriteNanos() {
        long j = this.expireAfterWriteNanos;
        if (j == -1) {
            return 0L;
        }
        return j;
    }

    public int getInitialCapacity() {
        int i = this.initialCapacity;
        if (i == -1) {
            return 16;
        }
        return i;
    }

    public Equivalence<Object> getKeyEquivalence() {
        return (Equivalence) MoreObjects.firstNonNull(this.keyEquivalence, getKeyStrength().defaultEquivalence());
    }

    public LocalCache.Strength getKeyStrength() {
        return (LocalCache.Strength) MoreObjects.firstNonNull(this.keyStrength, LocalCache.Strength.STRONG);
    }

    public long getMaximumWeight() {
        if (this.expireAfterWriteNanos == 0 || this.expireAfterAccessNanos == 0) {
            return 0L;
        }
        if (this.weigher == null) {
            return this.maximumSize;
        }
        return this.maximumWeight;
    }

    public long getRefreshNanos() {
        long j = this.refreshNanos;
        if (j == -1) {
            return 0L;
        }
        return j;
    }

    public <K1 extends K, V1 extends V> RemovalListener<K1, V1> getRemovalListener() {
        return (RemovalListener) MoreObjects.firstNonNull(this.removalListener, NullListener.INSTANCE);
    }

    public Supplier<? extends AbstractCache.StatsCounter> getStatsCounterSupplier() {
        return this.statsCounterSupplier;
    }

    public Ticker getTicker(boolean z) {
        Ticker ticker = this.ticker;
        if (ticker != null) {
            return ticker;
        }
        if (z) {
            return Ticker.systemTicker();
        }
        return NULL_TICKER;
    }

    public Equivalence<Object> getValueEquivalence() {
        return (Equivalence) MoreObjects.firstNonNull(this.valueEquivalence, getValueStrength().defaultEquivalence());
    }

    public LocalCache.Strength getValueStrength() {
        return (LocalCache.Strength) MoreObjects.firstNonNull(this.valueStrength, LocalCache.Strength.STRONG);
    }

    public <K1 extends K, V1 extends V> Weigher<K1, V1> getWeigher() {
        return (Weigher) MoreObjects.firstNonNull(this.weigher, OneWeigher.INSTANCE);
    }

    public CacheBuilder<K, V> initialCapacity(int i) {
        boolean z;
        boolean z2 = false;
        if (this.initialCapacity == -1) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkState(z, new ObfuscatedString(new long[]{-7431397659987691L, 1926174360859251387L, -5143718867520675707L, -2492348216599596966L, 1390873732968247250L, 3722791061212489398L}).toString(), this.initialCapacity);
        if (i >= 0) {
            z2 = true;
        }
        Preconditions.checkArgument(z2);
        this.initialCapacity = i;
        return this;
    }

    public boolean isRecordingStats() {
        if (this.statsCounterSupplier == CACHE_STATS_COUNTER) {
            return true;
        }
        return false;
    }

    @GwtIncompatible
    public CacheBuilder<K, V> keyEquivalence(Equivalence<Object> equivalence) {
        boolean z;
        if (this.keyEquivalence == null) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkState(z, new ObfuscatedString(new long[]{-4435911526342713409L, -6062678337878666703L, -1662026153581718032L, 5947990643920499662L, -6885868784680674045L, -3316421604275056673L}).toString(), this.keyEquivalence);
        this.keyEquivalence = (Equivalence) Preconditions.checkNotNull(equivalence);
        return this;
    }

    @GwtIncompatible
    public CacheBuilder<K, V> lenientParsing() {
        this.strictParsing = false;
        return this;
    }

    public CacheBuilder<K, V> maximumSize(long j) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4 = false;
        if (this.maximumSize == -1) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkState(z, new ObfuscatedString(new long[]{8654053377601052368L, 5195371473726518480L, 7784382730154749682L, -1185689281165017068L, 6802668124822888107L, -2156431495549049197L}).toString(), this.maximumSize);
        if (this.maximumWeight == -1) {
            z2 = true;
        } else {
            z2 = false;
        }
        Preconditions.checkState(z2, new ObfuscatedString(new long[]{2749665508608891632L, 6750193534258511571L, 1563264592003801978L, 2319408284616213421L, -633782399808757497L, 436607854893197968L}).toString(), this.maximumWeight);
        if (this.weigher == null) {
            z3 = true;
        } else {
            z3 = false;
        }
        Preconditions.checkState(z3, new ObfuscatedString(new long[]{-469395325921755779L, -6293228355925184647L, 7763890113783442945L, -4950454325224856594L, 3050533178144698438L, 8232866490436272851L, 2850577600640380604L}).toString());
        if (j >= 0) {
            z4 = true;
        }
        Preconditions.checkArgument(z4, new ObfuscatedString(new long[]{-8078286401155159554L, 5757785346132116364L, 1813054343489098506L, 719516225872732588L, -4273910305407243573L, -6404449425967168820L}).toString());
        this.maximumSize = j;
        return this;
    }

    @GwtIncompatible
    public CacheBuilder<K, V> maximumWeight(long j) {
        boolean z;
        boolean z2;
        boolean z3 = false;
        if (this.maximumWeight == -1) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkState(z, new ObfuscatedString(new long[]{-480627432421649139L, -131181705597018137L, 6757666438218313731L, 1476564526939789118L, -1119845249630109467L, 8596060531993091074L}).toString(), this.maximumWeight);
        if (this.maximumSize == -1) {
            z2 = true;
        } else {
            z2 = false;
        }
        Preconditions.checkState(z2, new ObfuscatedString(new long[]{4748656876485397772L, -9221428933082556528L, -3555193292858351765L, 3893418325635935187L, -7975008524608580158L, -3411305803094887736L}).toString(), this.maximumSize);
        if (j >= 0) {
            z3 = true;
        }
        Preconditions.checkArgument(z3, new ObfuscatedString(new long[]{1652438638815828260L, 1800039773196719373L, 4833968485132011691L, 3849718374361197315L, 456159102562211235L, 1525159065711381351L}).toString());
        this.maximumWeight = j;
        return this;
    }

    public CacheBuilder<K, V> recordStats() {
        this.statsCounterSupplier = CACHE_STATS_COUNTER;
        return this;
    }

    @GwtIncompatible
    public CacheBuilder<K, V> refreshAfterWrite(long j, TimeUnit timeUnit) {
        boolean z;
        Preconditions.checkNotNull(timeUnit);
        boolean z2 = false;
        if (this.refreshNanos == -1) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkState(z, new ObfuscatedString(new long[]{7988758941821122440L, 6229730762146432961L, 895305381196710016L, -1264475774845141701L, 2457813977123595285L}).toString(), this.refreshNanos);
        if (j > 0) {
            z2 = true;
        }
        Preconditions.checkArgument(z2, new ObfuscatedString(new long[]{8974328413653791916L, -7904503551051478516L, -3326690943676411733L, 1621396466760001006L, 1037852925026137318L}).toString(), j, timeUnit);
        this.refreshNanos = timeUnit.toNanos(j);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @CheckReturnValue
    public <K1 extends K, V1 extends V> CacheBuilder<K1, V1> removalListener(RemovalListener<? super K1, ? super V1> removalListener) {
        boolean z;
        if (this.removalListener == null) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkState(z);
        this.removalListener = (RemovalListener) Preconditions.checkNotNull(removalListener);
        return this;
    }

    public CacheBuilder<K, V> setKeyStrength(LocalCache.Strength strength) {
        boolean z;
        if (this.keyStrength == null) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkState(z, new ObfuscatedString(new long[]{-2289885739732428193L, -4617336876175001572L, 447184789966654210L, -6068101788415853332L, -5973828772096199008L, 1285005653795838820L}).toString(), this.keyStrength);
        this.keyStrength = (LocalCache.Strength) Preconditions.checkNotNull(strength);
        return this;
    }

    public CacheBuilder<K, V> setValueStrength(LocalCache.Strength strength) {
        boolean z;
        if (this.valueStrength == null) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkState(z, new ObfuscatedString(new long[]{1278644763422108199L, 6547994309570130350L, -8581118418367163897L, -6732935770171487128L, -6371385872311512511L, 8556578913091940686L}).toString(), this.valueStrength);
        this.valueStrength = (LocalCache.Strength) Preconditions.checkNotNull(strength);
        return this;
    }

    @GwtIncompatible
    public CacheBuilder<K, V> softValues() {
        return setValueStrength(LocalCache.Strength.SOFT);
    }

    public CacheBuilder<K, V> ticker(Ticker ticker) {
        boolean z;
        if (this.ticker == null) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkState(z);
        this.ticker = (Ticker) Preconditions.checkNotNull(ticker);
        return this;
    }

    public String toString() {
        MoreObjects.ToStringHelper stringHelper = MoreObjects.toStringHelper(this);
        if (this.initialCapacity != -1) {
            stringHelper.add(new ObfuscatedString(new long[]{273628882753535912L, -43212840614522266L, 7768716849581399848L}).toString(), this.initialCapacity);
        }
        if (this.concurrencyLevel != -1) {
            stringHelper.add(new ObfuscatedString(new long[]{-139875497016349078L, -1252801332796557848L, -8767903602895210563L}).toString(), this.concurrencyLevel);
        }
        if (this.maximumSize != -1) {
            stringHelper.add(new ObfuscatedString(new long[]{-7887813466935328741L, 6051588766629344797L, -556321660923984107L}).toString(), this.maximumSize);
        }
        if (this.maximumWeight != -1) {
            stringHelper.add(new ObfuscatedString(new long[]{-4397890734167771995L, 8896167020052866484L, 2257084634953444229L}).toString(), this.maximumWeight);
        }
        if (this.expireAfterWriteNanos != -1) {
            String obfuscatedString = new ObfuscatedString(new long[]{1972719181249524611L, 8366205011981196355L, 4545900019097152480L}).toString();
            long j = this.expireAfterWriteNanos;
            StringBuilder sb = new StringBuilder(22);
            sb.append(j);
            sb.append(new ObfuscatedString(new long[]{-5457078902427010639L, 6756247669098086925L}).toString());
            stringHelper.add(obfuscatedString, sb.toString());
        }
        if (this.expireAfterAccessNanos != -1) {
            String obfuscatedString2 = new ObfuscatedString(new long[]{-2523478257028512911L, -8152571490367026019L, 6443571832096475408L, 147167630219521142L}).toString();
            long j2 = this.expireAfterAccessNanos;
            StringBuilder sb2 = new StringBuilder(22);
            sb2.append(j2);
            sb2.append(new ObfuscatedString(new long[]{4845708556449138592L, 1316913303504132111L}).toString());
            stringHelper.add(obfuscatedString2, sb2.toString());
        }
        if (this.keyStrength != null) {
            stringHelper.add(new ObfuscatedString(new long[]{7397148263377975859L, 5938530801328476526L, -4419548485561364584L}).toString(), Ascii.toLowerCase(this.keyStrength.toString()));
        }
        if (this.valueStrength != null) {
            stringHelper.add(new ObfuscatedString(new long[]{-8538534254876745538L, 7365937178794414302L, 1350787261325502798L}).toString(), Ascii.toLowerCase(this.valueStrength.toString()));
        }
        if (this.keyEquivalence != null) {
            stringHelper.addValue(new ObfuscatedString(new long[]{6015607292153783224L, -7305303595388906883L, 5618223639621595747L}).toString());
        }
        if (this.valueEquivalence != null) {
            stringHelper.addValue(new ObfuscatedString(new long[]{1431535820078865885L, -4774670017768924199L, -114706955201137154L}).toString());
        }
        if (this.removalListener != null) {
            stringHelper.addValue(new ObfuscatedString(new long[]{6999849984453668093L, -5702644990717358724L, 31837055512000014L}).toString());
        }
        return stringHelper.toString();
    }

    @GwtIncompatible
    public CacheBuilder<K, V> valueEquivalence(Equivalence<Object> equivalence) {
        boolean z;
        if (this.valueEquivalence == null) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkState(z, new ObfuscatedString(new long[]{-974869480625768080L, 5948444390374888750L, -6601200146434142324L, 3167974087487404640L, 9041528671019223175L, -4942456467531486821L}).toString(), this.valueEquivalence);
        this.valueEquivalence = (Equivalence) Preconditions.checkNotNull(equivalence);
        return this;
    }

    @GwtIncompatible
    public CacheBuilder<K, V> weakKeys() {
        return setKeyStrength(LocalCache.Strength.WEAK);
    }

    @GwtIncompatible
    public CacheBuilder<K, V> weakValues() {
        return setValueStrength(LocalCache.Strength.WEAK);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @GwtIncompatible
    public <K1 extends K, V1 extends V> CacheBuilder<K1, V1> weigher(Weigher<? super K1, ? super V1> weigher) {
        boolean z;
        boolean z2 = false;
        if (this.weigher == null) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkState(z);
        if (this.strictParsing) {
            if (this.maximumSize == -1) {
                z2 = true;
            }
            Preconditions.checkState(z2, new ObfuscatedString(new long[]{4217538255317831552L, 8288381711488107955L, 2620485201804669481L, 5682362432140920255L, -3016561389432102479L, 8917000544507153671L, -3140911673809832861L}).toString(), this.maximumSize);
        }
        this.weigher = (Weigher) Preconditions.checkNotNull(weigher);
        return this;
    }

    @CheckReturnValue
    @GwtIncompatible
    public static CacheBuilder<Object, Object> from(String str) {
        return from(CacheBuilderSpec.parse(str));
    }

    @CheckReturnValue
    public <K1 extends K, V1 extends V> Cache<K1, V1> build() {
        checkWeightWithWeigher();
        checkNonLoadingCache();
        return new LocalCache.LocalManualCache(this);
    }
}
