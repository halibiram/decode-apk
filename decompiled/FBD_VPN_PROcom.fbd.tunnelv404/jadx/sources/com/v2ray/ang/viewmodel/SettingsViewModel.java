package com.v2ray.ang.viewmodel;

import android.app.Application;
import android.content.SharedPreferences;
import androidx.lifecycle.AndroidViewModel;
import androidx.preference.PreferenceManager;
import com.panda912.muddy.ObfuscatedString;
import com.v2ray.ang.handler.MmkvManager;
import com.v2ray.ang.handler.SettingsManager;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\u0006\u0010\u0007\u001a\u00020\bJ\b\u0010\t\u001a\u00020\bH\u0014J\u001a\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016¨\u0006\u000f"}, d2 = {"Lcom/v2ray/ang/viewmodel/SettingsViewModel;", "Landroidx/lifecycle/AndroidViewModel;", "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;", "application", "Landroid/app/Application;", "<init>", "(Landroid/app/Application;)V", "startListenPreferenceChange", "", "onCleared", "onSharedPreferenceChanged", "sharedPreferences", "Landroid/content/SharedPreferences;", "key", "", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SettingsViewModel extends AndroidViewModel implements SharedPreferences.OnSharedPreferenceChangeListener {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SettingsViewModel(@NotNull Application application) {
        super(application);
        Intrinsics.checkNotNullParameter(application, new ObfuscatedString(new long[]{3109751425473400089L, -7324328517513741676L, 3956216796841012910L}).toString());
    }

    @Override // androidx.lifecycle.ViewModel
    public void onCleared() {
        PreferenceManager.getDefaultSharedPreferences(getApplication()).unregisterOnSharedPreferenceChangeListener(this);
        new ObfuscatedString(new long[]{4485290280256454962L, 2125198660722522134L, -4044039652016310783L}).toString();
        new ObfuscatedString(new long[]{-5397681254657148215L, 4129376505488020033L, -2240664725575849968L, -639691127027942280L, -7489925091311372316L}).toString();
        super.onCleared();
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x006d, code lost:
    
        if (r10.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-747470057101670134L, -1541386455731915691L, 6125072043211446482L, -853984746619290494L}).toString()) == false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0083, code lost:
    
        if (r10.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-2620044787470354503L, 1764924883941835641L, -2263006310914258738L, -3616665483101324333L}).toString()) == false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x03f1, code lost:
    
        com.v2ray.ang.handler.MmkvManager.INSTANCE.encodeSettings(r10, r9.getBoolean(r10, false));
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0099, code lost:
    
        if (r10.equals(new com.panda912.muddy.ObfuscatedString(new long[]{8594862129706132166L, -1567662572096185259L, 7573596092814218951L, 8410870248803272630L}).toString()) == false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x00af, code lost:
    
        if (r10.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-7266894425585873816L, -2859995544502219970L, 8325372574939627003L}).toString()) == false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00c5, code lost:
    
        if (r10.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-2244377293715971717L, -8880062358339101877L, -6495617870954781066L}).toString()) == false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00db, code lost:
    
        if (r10.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-4455040495223887258L, 1524118698707549281L, 971770850069098832L, -446265676310019781L}).toString()) == false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00f1, code lost:
    
        if (r10.equals(new com.panda912.muddy.ObfuscatedString(new long[]{5069243411435497476L, -8560338432538942936L, -1478502235053141185L, -709549424439488025L, -7333283409603316178L}).toString()) == false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0107, code lost:
    
        if (r10.equals(new com.panda912.muddy.ObfuscatedString(new long[]{3956168609275796162L, -281229032402911163L, 2969350871325344450L, -4125223821030050561L}).toString()) == false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x011d, code lost:
    
        if (r10.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-1546516524119724234L, 8841249360765391841L, 8387266094683389865L, -2804032566739756185L}).toString()) == false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0133, code lost:
    
        if (r10.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-8787870318452260729L, 1798858138653949311L, -7201544648248987787L, 5670387991424406298L}).toString()) == false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0149, code lost:
    
        if (r10.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-239833793139673986L, -5361902876690289656L, 2706648610697332862L, -8719691421196125456L}).toString()) == false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x015f, code lost:
    
        if (r10.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-7272001764478515011L, 7791522810750794401L, -8484415087272115969L, -1936148355707761726L, -6083989434612127745L}).toString()) == false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0175, code lost:
    
        if (r10.equals(new com.panda912.muddy.ObfuscatedString(new long[]{8002257639314236943L, 4231141285771489503L, 3170089755115501425L, -7869604455296096495L}).toString()) == false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x018b, code lost:
    
        if (r10.equals(new com.panda912.muddy.ObfuscatedString(new long[]{8369038136456213848L, -3269629506425893671L, -4423415144334867801L, -5941193166764620597L}).toString()) == false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x01a1, code lost:
    
        if (r10.equals(new com.panda912.muddy.ObfuscatedString(new long[]{7069533397062607044L, -6584106586890011456L, -8754558707888047269L, -7304803655033088701L, -5677532232957335944L}).toString()) == false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x01b7, code lost:
    
        if (r10.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-5706721575721279526L, 8262822388185055618L, 246031237176925561L}).toString()) == false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x01cd, code lost:
    
        if (r10.equals(new com.panda912.muddy.ObfuscatedString(new long[]{7589563200961658011L, 5913867036878923923L, 5019810424867122175L, -3357519536103227436L}).toString()) == false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x01e3, code lost:
    
        if (r10.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-1572214365116047550L, -3937051145160430102L, -173150075065120303L, 6337093406847356723L}).toString()) == false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x01f9, code lost:
    
        if (r10.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-2427194575312764020L, -2894588573645452318L, 4374976827079431855L, -9008702350236025263L, 6463851908913879102L}).toString()) == false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x020f, code lost:
    
        if (r10.equals(new com.panda912.muddy.ObfuscatedString(new long[]{8278165444427603167L, 6385580941485639526L, -5151857361137681331L, -904415426888063447L}).toString()) == false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0225, code lost:
    
        if (r10.equals(new com.panda912.muddy.ObfuscatedString(new long[]{3874504257900853165L, -8451026032832088604L, 3469401842986342976L}).toString()) == false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x023b, code lost:
    
        if (r10.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-6772488750387931190L, -565900880259468713L, 693421944287503856L}).toString()) == false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0251, code lost:
    
        if (r10.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-4733062165530239845L, -5448838444867552317L, -1397473409478562557L, 3611296142606513597L, -7735112630791438627L}).toString()) == false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0267, code lost:
    
        if (r10.equals(new com.panda912.muddy.ObfuscatedString(new long[]{4337246648772457393L, -3521686130397362174L, -1419737727423692380L, -7382413150460146686L, -8540306274325106001L}).toString()) == false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0305, code lost:
    
        com.v2ray.ang.handler.MmkvManager.INSTANCE.encodeSettings(r10, r9.getString(r10, new com.panda912.muddy.ObfuscatedString(new long[]{2425433525358792389L, 448962312014617704L}).toString()));
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x027d, code lost:
    
        if (r10.equals(new com.panda912.muddy.ObfuscatedString(new long[]{810077792746041427L, -105469186830072364L, 5986387771091775038L, -8704395330471183596L, -6860332984492427965L}).toString()) == false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0293, code lost:
    
        if (r10.equals(new com.panda912.muddy.ObfuscatedString(new long[]{6962939398650278675L, 5594771004609971895L, 8293290098370447280L, 4487123544989991588L}).toString()) == false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x02a9, code lost:
    
        if (r10.equals(new com.panda912.muddy.ObfuscatedString(new long[]{1721455429636035026L, -7341956948964779481L, 8952164282261711186L, 1234027281187605411L}).toString()) == false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x02bf, code lost:
    
        if (r10.equals(new com.panda912.muddy.ObfuscatedString(new long[]{3267570157492137703L, 2375082223722922875L, -3466799132743410397L}).toString()) == false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x02d5, code lost:
    
        if (r10.equals(new com.panda912.muddy.ObfuscatedString(new long[]{7924060171122993505L, -6097326187278641346L, 6924923048267106181L}).toString()) == false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0041, code lost:
    
        if (r10.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-4766442305928949090L, -5065148181658474915L, -4469243461767022050L}).toString()) == false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x02eb, code lost:
    
        if (r10.equals(new com.panda912.muddy.ObfuscatedString(new long[]{2948781971577142234L, -4774187387653100679L, -5041865192558350198L, -2406257470822094229L}).toString()) == false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0301, code lost:
    
        if (r10.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-5122159194692151016L, 812038347558144471L, 5989363350701263175L, 1593158088817131748L}).toString()) == false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0331, code lost:
    
        if (r10.equals(new com.panda912.muddy.ObfuscatedString(new long[]{7909996615336406320L, -7869221909357126399L, 3917670983323501981L, 7851026234222914590L}).toString()) == false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0347, code lost:
    
        if (r10.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-7458438294518469202L, -9190586158532299810L, 1515674020880395859L, -2155251166564136476L, -8203452450590759773L, -8603513367380704465L}).toString()) == false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x035d, code lost:
    
        if (r10.equals(new com.panda912.muddy.ObfuscatedString(new long[]{4966377926765915900L, 82646700896970082L, 5264310688576386613L}).toString()) == false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x03c0, code lost:
    
        com.v2ray.ang.handler.MmkvManager.INSTANCE.encodeSettings(r10, r9.getString(r10, new com.panda912.muddy.ObfuscatedString(new long[]{8863216231394514066L}).toString()));
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0373, code lost:
    
        if (r10.equals(new com.panda912.muddy.ObfuscatedString(new long[]{678657782400841447L, 8334028571267865328L, -9207528162588874162L, 429687138249902645L, 2908499518992870376L, 4611739830317715383L}).toString()) == false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0389, code lost:
    
        if (r10.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-2088058760246105377L, -5658796290346065347L, 7660612027532676988L, 1950422468742319334L}).toString()) == false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x03bd, code lost:
    
        if (r10.equals(new com.panda912.muddy.ObfuscatedString(new long[]{1518656277497196082L, 5202449560892416682L, 5310917350625006639L}).toString()) == false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x03ee, code lost:
    
        if (r10.equals(new com.panda912.muddy.ObfuscatedString(new long[]{688094822164467624L, -4935558064651204135L, 1681001391693442926L, 1281023794789724375L}).toString()) == false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0057, code lost:
    
        if (r10.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-3940722856925669554L, 2729551665987827759L, -6279480833443433931L, 7152373934721320625L, 5547104927963328453L, -7084259015725541770L}).toString()) == false) goto L134;
     */
    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onSharedPreferenceChanged(@NotNull SharedPreferences sharedPreferences, @Nullable String key) {
        Intrinsics.checkNotNullParameter(sharedPreferences, new ObfuscatedString(new long[]{-7149320018405871867L, -2195220157737582171L, 5876890050430733762L, -3096995595165134243L}).toString());
        new ObfuscatedString(new long[]{4893272561849085912L, -4808798345175797584L, 7866863731226278622L}).toString();
        if (key != null) {
            switch (key.hashCode()) {
                case -2090725504:
                    break;
                case -1909446324:
                    break;
                case -1717226734:
                    if (key.equals(new ObfuscatedString(new long[]{-8735044842313683564L, -780449875935595330L, 7600434361103775744L, 4436141337628797225L}).toString())) {
                        MmkvManager.INSTANCE.encodeSettings(key, sharedPreferences.getBoolean(key, true));
                        break;
                    }
                    break;
                case -1437452616:
                    break;
                case -1394698152:
                    break;
                case -1299698113:
                    break;
                case -1101986564:
                    break;
                case -993723110:
                    break;
                case -802623608:
                    break;
                case -783427457:
                    break;
                case -740927166:
                    break;
                case -737440598:
                    break;
                case -725812793:
                    break;
                case -704532754:
                    break;
                case -691948295:
                    break;
                case -534189624:
                    break;
                case -520608545:
                    break;
                case -255866035:
                    break;
                case 63631897:
                    break;
                case 98003096:
                    break;
                case 357687687:
                    break;
                case 446852505:
                    break;
                case 535711524:
                    break;
                case 694952602:
                    break;
                case 774988273:
                    break;
                case 1060325085:
                    break;
                case 1105294893:
                    break;
                case 1154148843:
                    break;
                case 1162431150:
                    break;
                case 1214153284:
                    break;
                case 1254054971:
                    break;
                case 1307046162:
                    break;
                case 1341101704:
                    break;
                case 1534302187:
                    break;
                case 1757397293:
                    break;
                case 1791749558:
                    break;
                case 1959171977:
                    break;
                case 1959922464:
                    break;
                case 1974004137:
                    break;
                case 2029957005:
                    break;
                case 2133055988:
                    break;
            }
        }
        if (Intrinsics.areEqual(key, new ObfuscatedString(new long[]{-8544497705402515703L, -4703327997540212365L, -9003781689012449796L, -8136478815869376738L}).toString())) {
            SettingsManager.INSTANCE.setNightMode();
        }
    }

    public final void startListenPreferenceChange() {
        PreferenceManager.getDefaultSharedPreferences(getApplication()).registerOnSharedPreferenceChangeListener(this);
    }
}
