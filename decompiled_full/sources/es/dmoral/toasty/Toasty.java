package es.dmoral.toasty;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.NinePatchDrawable;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.CheckResult;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.StringRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.content.ContextCompat;

@SuppressLint({"InflateParams"})
/* loaded from: classes3.dex */
public class Toasty {
    public static final int LENGTH_LONG = 1;
    public static final int LENGTH_SHORT = 0;

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final Typeface f1046xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static Typeface f1047x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public static int f1048x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public static boolean f1049x75d576dc;

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public static boolean f1050x9738a56c;

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters */
    public static int f1051x9e171bf9;

    /* renamed from: 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋, reason: contains not printable characters */
    public static int f1052x34271fae;

    /* renamed from: 뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두, reason: contains not printable characters */
    public static int f1053x95f25580;

    /* renamed from: 뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷, reason: contains not printable characters */
    public static boolean f1054x3db60231;

    /* renamed from: 뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎, reason: contains not printable characters */
    public static boolean f1055x9d12c1f4;

    /* renamed from: 뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠, reason: contains not printable characters */
    public static Toast f1056x1db10c9d;

    static {
        Typeface create = Typeface.create("sans-serif-condensed", 0);
        f1046xfbe0c504 = create;
        f1047x3271d0aa = create;
        f1048x1378447b = 16;
        f1049x75d576dc = true;
        f1050x9738a56c = true;
        f1051x9e171bf9 = -1;
        f1052x34271fae = -1;
        f1053x95f25580 = -1;
        f1054x3db60231 = true;
        f1055x9d12c1f4 = false;
        f1056x1db10c9d = null;
    }

    @CheckResult
    public static Toast custom(@NonNull Context context, @NonNull CharSequence charSequence, @DrawableRes int i, @ColorRes int i2, int i3, boolean z, boolean z2) {
        return custom(context, charSequence, AppCompatResources.getDrawable(context, i), ContextCompat.getColor(context, i2), ContextCompat.getColor(context, R.color.defaultTextColor), i3, z, z2);
    }

    @CheckResult
    public static Toast error(@NonNull Context context, @StringRes int i) {
        return error(context, (CharSequence) context.getString(i), 0, true);
    }

    @CheckResult
    public static Toast info(@NonNull Context context, @StringRes int i) {
        return info(context, (CharSequence) context.getString(i), 0, true);
    }

    @CheckResult
    public static Toast normal(@NonNull Context context, @StringRes int i) {
        return normal(context, (CharSequence) context.getString(i), 0, (Drawable) null, false);
    }

    @CheckResult
    public static Toast success(@NonNull Context context, @StringRes int i) {
        return success(context, (CharSequence) context.getString(i), 0, true);
    }

    @CheckResult
    public static Toast warning(@NonNull Context context, @StringRes int i) {
        return warning(context, (CharSequence) context.getString(i), 0, true);
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static Toast m1745xfbe0c504(Context context, CharSequence charSequence, Drawable drawable, int i, boolean z) {
        if (f1054x3db60231 && Build.VERSION.SDK_INT >= 29) {
            if ((context.getResources().getConfiguration().uiMode & 48) == 16) {
                return custom(context, charSequence, drawable, ContextCompat.getColor(context, R.color.defaultTextColor), ContextCompat.getColor(context, R.color.normalColor), i, z, true);
            }
            return custom(context, charSequence, drawable, ContextCompat.getColor(context, R.color.normalColor), ContextCompat.getColor(context, R.color.defaultTextColor), i, z, true);
        }
        if (Build.VERSION.SDK_INT >= 27) {
            return custom(context, charSequence, drawable, ContextCompat.getColor(context, R.color.defaultTextColor), ContextCompat.getColor(context, R.color.normalColor), i, z, true);
        }
        return custom(context, charSequence, drawable, ContextCompat.getColor(context, R.color.normalColor), ContextCompat.getColor(context, R.color.defaultTextColor), i, z, true);
    }

    @CheckResult
    public static Toast error(@NonNull Context context, @NonNull CharSequence charSequence) {
        return error(context, charSequence, 0, true);
    }

    @CheckResult
    public static Toast info(@NonNull Context context, @NonNull CharSequence charSequence) {
        return info(context, charSequence, 0, true);
    }

    @CheckResult
    public static Toast normal(@NonNull Context context, @NonNull CharSequence charSequence) {
        return normal(context, charSequence, 0, (Drawable) null, false);
    }

    @CheckResult
    public static Toast success(@NonNull Context context, @NonNull CharSequence charSequence) {
        return success(context, charSequence, 0, true);
    }

    @CheckResult
    public static Toast warning(@NonNull Context context, @NonNull CharSequence charSequence) {
        return warning(context, charSequence, 0, true);
    }

    /* loaded from: classes3.dex */
    public static class Config {

        /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
        public Typeface f1057xfbe0c504;

        /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
        public int f1058x3271d0aa;

        /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
        public boolean f1059x1378447b;

        /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
        public boolean f1060x75d576dc;

        /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
        public int f1061x9738a56c;

        /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters */
        public int f1062x9e171bf9;

        /* renamed from: 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋, reason: contains not printable characters */
        public int f1063x34271fae;

        /* renamed from: 뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두, reason: contains not printable characters */
        public boolean f1064x95f25580;

        /* renamed from: 뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷, reason: contains not printable characters */
        public boolean f1065x3db60231;

        /* JADX WARN: Type inference failed for: r0v0, types: [es.dmoral.toasty.Toasty$Config, java.lang.Object] */
        @CheckResult
        public static Config getInstance() {
            ?? obj = new Object();
            obj.f1057xfbe0c504 = Toasty.f1047x3271d0aa;
            obj.f1058x3271d0aa = Toasty.f1048x1378447b;
            obj.f1059x1378447b = Toasty.f1049x75d576dc;
            obj.f1060x75d576dc = true;
            obj.f1061x9738a56c = Toasty.f1051x9e171bf9;
            obj.f1062x9e171bf9 = Toasty.f1052x34271fae;
            obj.f1063x34271fae = Toasty.f1053x95f25580;
            obj.f1064x95f25580 = true;
            obj.f1065x3db60231 = false;
            return obj;
        }

        public static void reset() {
            Toasty.f1047x3271d0aa = Toasty.f1046xfbe0c504;
            Toasty.f1048x1378447b = 16;
            Toasty.f1049x75d576dc = true;
            Toasty.f1050x9738a56c = true;
            Toasty.f1051x9e171bf9 = -1;
            Toasty.f1052x34271fae = -1;
            Toasty.f1053x95f25580 = -1;
            Toasty.f1054x3db60231 = true;
            Toasty.f1055x9d12c1f4 = false;
        }

        @CheckResult
        public Config allowQueue(boolean z) {
            this.f1060x75d576dc = z;
            return this;
        }

        public void apply() {
            Toasty.f1047x3271d0aa = this.f1057xfbe0c504;
            Toasty.f1048x1378447b = this.f1058x3271d0aa;
            Toasty.f1049x75d576dc = this.f1059x1378447b;
            Toasty.f1050x9738a56c = this.f1060x75d576dc;
            Toasty.f1051x9e171bf9 = this.f1061x9738a56c;
            Toasty.f1052x34271fae = this.f1062x9e171bf9;
            Toasty.f1053x95f25580 = this.f1063x34271fae;
            Toasty.f1054x3db60231 = this.f1064x95f25580;
            Toasty.f1055x9d12c1f4 = this.f1065x3db60231;
        }

        @CheckResult
        public Config setGravity(int i, int i2, int i3) {
            this.f1061x9738a56c = i;
            this.f1062x9e171bf9 = i2;
            this.f1063x34271fae = i3;
            return this;
        }

        public Config setRTL(boolean z) {
            this.f1065x3db60231 = z;
            return this;
        }

        @CheckResult
        public Config setTextSize(int i) {
            this.f1058x3271d0aa = i;
            return this;
        }

        @CheckResult
        public Config setToastTypeface(@NonNull Typeface typeface) {
            this.f1057xfbe0c504 = typeface;
            return this;
        }

        @CheckResult
        public Config supportDarkTheme(boolean z) {
            this.f1064x95f25580 = z;
            return this;
        }

        @CheckResult
        public Config tintIcon(boolean z) {
            this.f1059x1378447b = z;
            return this;
        }

        @CheckResult
        public Config setGravity(int i) {
            this.f1061x9738a56c = i;
            return this;
        }
    }

    @CheckResult
    public static Toast error(@NonNull Context context, @StringRes int i, int i2) {
        return error(context, (CharSequence) context.getString(i), i2, true);
    }

    @CheckResult
    public static Toast info(@NonNull Context context, @StringRes int i, int i2) {
        return info(context, (CharSequence) context.getString(i), i2, true);
    }

    @CheckResult
    public static Toast normal(@NonNull Context context, @StringRes int i, Drawable drawable) {
        return normal(context, (CharSequence) context.getString(i), 0, drawable, true);
    }

    @CheckResult
    public static Toast success(@NonNull Context context, @StringRes int i, int i2) {
        return success(context, (CharSequence) context.getString(i), i2, true);
    }

    @CheckResult
    public static Toast warning(@NonNull Context context, @StringRes int i, int i2) {
        return warning(context, (CharSequence) context.getString(i), i2, true);
    }

    @CheckResult
    public static Toast error(@NonNull Context context, @NonNull CharSequence charSequence, int i) {
        return error(context, charSequence, i, true);
    }

    @CheckResult
    public static Toast info(@NonNull Context context, @NonNull CharSequence charSequence, int i) {
        return info(context, charSequence, i, true);
    }

    @CheckResult
    public static Toast normal(@NonNull Context context, @NonNull CharSequence charSequence, Drawable drawable) {
        return normal(context, charSequence, 0, drawable, true);
    }

    @CheckResult
    public static Toast success(@NonNull Context context, @NonNull CharSequence charSequence, int i) {
        return success(context, charSequence, i, true);
    }

    @CheckResult
    public static Toast warning(@NonNull Context context, @NonNull CharSequence charSequence, int i) {
        return warning(context, charSequence, i, true);
    }

    @CheckResult
    public static Toast error(@NonNull Context context, @StringRes int i, int i2, boolean z) {
        return custom(context, (CharSequence) context.getString(i), AppCompatResources.getDrawable(context, R.drawable.ic_clear_white_24dp), ContextCompat.getColor(context, R.color.errorColor), ContextCompat.getColor(context, R.color.defaultTextColor), i2, z, true);
    }

    @CheckResult
    public static Toast info(@NonNull Context context, @StringRes int i, int i2, boolean z) {
        return custom(context, (CharSequence) context.getString(i), AppCompatResources.getDrawable(context, R.drawable.ic_info_outline_white_24dp), ContextCompat.getColor(context, R.color.infoColor), ContextCompat.getColor(context, R.color.defaultTextColor), i2, z, true);
    }

    @CheckResult
    public static Toast normal(@NonNull Context context, @StringRes int i, int i2) {
        return normal(context, (CharSequence) context.getString(i), i2, (Drawable) null, false);
    }

    @CheckResult
    public static Toast success(@NonNull Context context, @StringRes int i, int i2, boolean z) {
        return custom(context, (CharSequence) context.getString(i), AppCompatResources.getDrawable(context, R.drawable.ic_check_white_24dp), ContextCompat.getColor(context, R.color.successColor), ContextCompat.getColor(context, R.color.defaultTextColor), i2, z, true);
    }

    @CheckResult
    public static Toast warning(@NonNull Context context, @StringRes int i, int i2, boolean z) {
        return custom(context, (CharSequence) context.getString(i), AppCompatResources.getDrawable(context, R.drawable.ic_error_outline_white_24dp), ContextCompat.getColor(context, R.color.warningColor), ContextCompat.getColor(context, R.color.defaultTextColor), i2, z, true);
    }

    @CheckResult
    public static Toast custom(@NonNull Context context, @StringRes int i, Drawable drawable, int i2, boolean z) {
        return custom(context, (CharSequence) context.getString(i), drawable, -1, ContextCompat.getColor(context, R.color.defaultTextColor), i2, z, false);
    }

    @CheckResult
    public static Toast normal(@NonNull Context context, @NonNull CharSequence charSequence, int i) {
        return normal(context, charSequence, i, (Drawable) null, false);
    }

    @CheckResult
    public static Toast normal(@NonNull Context context, @StringRes int i, int i2, Drawable drawable) {
        return normal(context, (CharSequence) context.getString(i), i2, drawable, true);
    }

    @CheckResult
    public static Toast normal(@NonNull Context context, @NonNull CharSequence charSequence, int i, Drawable drawable) {
        return normal(context, charSequence, i, drawable, true);
    }

    @CheckResult
    public static Toast custom(@NonNull Context context, @NonNull CharSequence charSequence, Drawable drawable, int i, boolean z) {
        return custom(context, charSequence, drawable, -1, ContextCompat.getColor(context, R.color.defaultTextColor), i, z, false);
    }

    @CheckResult
    public static Toast normal(@NonNull Context context, @StringRes int i, int i2, Drawable drawable, boolean z) {
        return m1745xfbe0c504(context, context.getString(i), drawable, i2, z);
    }

    @CheckResult
    public static Toast normal(@NonNull Context context, @NonNull CharSequence charSequence, int i, Drawable drawable, boolean z) {
        return m1745xfbe0c504(context, charSequence, drawable, i, z);
    }

    @CheckResult
    public static Toast custom(@NonNull Context context, @StringRes int i, @DrawableRes int i2, @ColorRes int i3, int i4, boolean z, boolean z2) {
        return custom(context, context.getString(i), AppCompatResources.getDrawable(context, i2), ContextCompat.getColor(context, i3), ContextCompat.getColor(context, R.color.defaultTextColor), i4, z, z2);
    }

    @CheckResult
    public static Toast error(@NonNull Context context, @NonNull CharSequence charSequence, int i, boolean z) {
        return custom(context, charSequence, AppCompatResources.getDrawable(context, R.drawable.ic_clear_white_24dp), ContextCompat.getColor(context, R.color.errorColor), ContextCompat.getColor(context, R.color.defaultTextColor), i, z, true);
    }

    @CheckResult
    public static Toast info(@NonNull Context context, @NonNull CharSequence charSequence, int i, boolean z) {
        return custom(context, charSequence, AppCompatResources.getDrawable(context, R.drawable.ic_info_outline_white_24dp), ContextCompat.getColor(context, R.color.infoColor), ContextCompat.getColor(context, R.color.defaultTextColor), i, z, true);
    }

    @CheckResult
    public static Toast success(@NonNull Context context, @NonNull CharSequence charSequence, int i, boolean z) {
        return custom(context, charSequence, AppCompatResources.getDrawable(context, R.drawable.ic_check_white_24dp), ContextCompat.getColor(context, R.color.successColor), ContextCompat.getColor(context, R.color.defaultTextColor), i, z, true);
    }

    @CheckResult
    public static Toast warning(@NonNull Context context, @NonNull CharSequence charSequence, int i, boolean z) {
        return custom(context, charSequence, AppCompatResources.getDrawable(context, R.drawable.ic_error_outline_white_24dp), ContextCompat.getColor(context, R.color.warningColor), ContextCompat.getColor(context, R.color.defaultTextColor), i, z, true);
    }

    @CheckResult
    public static Toast custom(@NonNull Context context, @StringRes int i, Drawable drawable, @ColorRes int i2, int i3, boolean z, boolean z2) {
        return custom(context, context.getString(i), drawable, ContextCompat.getColor(context, i2), ContextCompat.getColor(context, R.color.defaultTextColor), i3, z, z2);
    }

    @CheckResult
    public static Toast custom(@NonNull Context context, @StringRes int i, Drawable drawable, @ColorRes int i2, @ColorRes int i3, int i4, boolean z, boolean z2) {
        return custom(context, context.getString(i), drawable, ContextCompat.getColor(context, i2), ContextCompat.getColor(context, i3), i4, z, z2);
    }

    @CheckResult
    @SuppressLint({"ShowToast"})
    public static Toast custom(@NonNull Context context, @NonNull CharSequence charSequence, Drawable drawable, @ColorInt int i, @ColorInt int i2, int i3, boolean z, boolean z2) {
        Drawable drawable2;
        Toast makeText = Toast.makeText(context, "", i3);
        View inflate = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.toast_layout, (ViewGroup) null);
        LinearLayout linearLayout = (LinearLayout) inflate.findViewById(R.id.toast_root);
        ImageView imageView = (ImageView) inflate.findViewById(R.id.toast_icon);
        TextView textView = (TextView) inflate.findViewById(R.id.toast_text);
        if (z2) {
            drawable2 = (NinePatchDrawable) AppCompatResources.getDrawable(context, R.drawable.toast_frame);
            drawable2.setColorFilter(i, PorterDuff.Mode.SRC_IN);
        } else {
            drawable2 = AppCompatResources.getDrawable(context, R.drawable.toast_frame);
        }
        inflate.setBackground(drawable2);
        if (!z) {
            imageView.setVisibility(8);
        } else if (drawable != null) {
            if (f1055x9d12c1f4) {
                linearLayout.setLayoutDirection(1);
            }
            if (f1049x75d576dc) {
                drawable.setColorFilter(i2, PorterDuff.Mode.SRC_IN);
            }
            imageView.setBackground(drawable);
        } else {
            throw new IllegalArgumentException("Avoid passing 'icon' as null if 'withIcon' is set to true");
        }
        textView.setText(charSequence);
        textView.setTextColor(i2);
        textView.setTypeface(f1047x3271d0aa);
        textView.setTextSize(2, f1048x1378447b);
        makeText.setView(inflate);
        if (!f1050x9738a56c) {
            Toast toast = f1056x1db10c9d;
            if (toast != null) {
                toast.cancel();
            }
            f1056x1db10c9d = makeText;
        }
        int i4 = f1051x9e171bf9;
        if (i4 == -1) {
            i4 = makeText.getGravity();
        }
        int i5 = f1052x34271fae;
        if (i5 == -1) {
            i5 = makeText.getXOffset();
        }
        int i6 = f1053x95f25580;
        if (i6 == -1) {
            i6 = makeText.getYOffset();
        }
        makeText.setGravity(i4, i5, i6);
        return makeText;
    }
}
