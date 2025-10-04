package coil3.request;

import android.graphics.Bitmap;
import android.graphics.ColorSpace;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import androidx.annotation.DrawableRes;
import androidx.annotation.RequiresApi;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import coil3.Extras;
import coil3.ExtrasKt;
import coil3.ImageLoader;
import coil3.Image_androidKt;
import coil3.content.Utils_androidKt;
import coil3.request.ImageRequest;
import coil3.target.ImageViewTarget;
import coil3.transition.CrossfadeTransition;
import coil3.transition.Transition;
import defpackage.AbstractC0852xe0c86957;
import defpackage.C0593xe54e5533;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0018\u001a\u0019\u0010\u0003\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0003\u0010\u0004\u001a\u001b\u0010\u0007\u001a\u00020\u0000*\u00020\u00002\b\b\u0001\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b\u001a\u001b\u0010\u0007\u001a\u00020\u0000*\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0007\u0010\u000b\u001a\u001b\u0010\f\u001a\u00020\u0000*\u00020\u00002\b\b\u0001\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\f\u0010\b\u001a\u001b\u0010\f\u001a\u00020\u0000*\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\f\u0010\u000b\u001a\u001b\u0010\r\u001a\u00020\u0000*\u00020\u00002\b\b\u0001\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\r\u0010\b\u001a\u001b\u0010\r\u001a\u00020\u0000*\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\r\u0010\u000b\u001a'\u0010\u0010\u001a\u00020\u0000*\u00020\u00002\u0012\u0010\u0010\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u000f0\u000e\"\u00020\u000fH\u0007¢\u0006\u0004\b\u0010\u0010\u0011\u001a!\u0010\u0010\u001a\u00020\u0000*\u00020\u00002\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0012H\u0007¢\u0006\u0004\b\u0010\u0010\u0013\u001a\u0019\u0010\u0015\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0005¢\u0006\u0004\b\u0015\u0010\b\u001a\u0019\u0010\u0015\u001a\u00020\u0016*\u00020\u00162\u0006\u0010\u0014\u001a\u00020\u0005¢\u0006\u0004\b\u0015\u0010\u0017\u001a\u0019\u0010\u001a\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b\u001a\u0010\u001b\u001a\u0019\u0010\u001a\u001a\u00020\u0016*\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b\u001a\u0010\u001c\u001a\u0019\u0010\u001f\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u001d¢\u0006\u0004\b\u001f\u0010 \u001a\u0019\u0010\u001f\u001a\u00020\u0016*\u00020\u00162\u0006\u0010\u001e\u001a\u00020\u001d¢\u0006\u0004\b\u001f\u0010!\u001a\u001b\u0010#\u001a\u00020\u0000*\u00020\u00002\u0006\u0010#\u001a\u00020\"H\u0007¢\u0006\u0004\b#\u0010$\u001a\u001b\u0010#\u001a\u00020\u0016*\u00020\u00162\u0006\u0010#\u001a\u00020\"H\u0007¢\u0006\u0004\b#\u0010%\u001a\u0019\u0010(\u001a\u00020\u0000*\u00020\u00002\u0006\u0010'\u001a\u00020&¢\u0006\u0004\b(\u0010)\u001a\u0019\u0010(\u001a\u00020\u0016*\u00020\u00162\u0006\u0010'\u001a\u00020&¢\u0006\u0004\b(\u0010*\u001a\u001b\u0010-\u001a\u00020\u0000*\u00020\u00002\b\u0010,\u001a\u0004\u0018\u00010+¢\u0006\u0004\b-\u0010.\u001a\u001b\u0010-\u001a\u00020\u0000*\u00020\u00002\b\u0010-\u001a\u0004\u0018\u00010/¢\u0006\u0004\b-\u00100\u001a\u001b\u00101\u001a\u00020\u0000*\u00020\u00002\u0006\u0010'\u001a\u00020&H\u0007¢\u0006\u0004\b1\u0010)\u001a\u001b\u00101\u001a\u00020\u0016*\u00020\u00162\u0006\u0010'\u001a\u00020&H\u0007¢\u0006\u0004\b1\u0010*\u001a\u0019\u00102\u001a\u00020\u0000*\u00020\u00002\u0006\u0010'\u001a\u00020&¢\u0006\u0004\b2\u0010)\u001a\u0019\u00102\u001a\u00020\u0016*\u00020\u00162\u0006\u0010'\u001a\u00020&¢\u0006\u0004\b2\u0010*\u001a\u0019\u00103\u001a\u00020\u0000*\u00020\u00002\u0006\u0010'\u001a\u00020&¢\u0006\u0004\b3\u0010)\u001a\u0019\u00103\u001a\u00020\u0016*\u00020\u00162\u0006\u0010'\u001a\u00020&¢\u0006\u0004\b3\u0010*\"$\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0012*\u0002048FX\u0087\u0004¢\u0006\f\u0012\u0004\b7\u00108\u001a\u0004\b5\u00106\"$\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0012*\u0002098FX\u0087\u0004¢\u0006\f\u0012\u0004\b7\u0010;\u001a\u0004\b5\u0010:\"*\u0010\u0010\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u00120=*\u00020<8FX\u0087\u0004¢\u0006\f\u0012\u0004\b7\u0010?\u001a\u0004\b5\u0010>\"\u0015\u0010B\u001a\u00020\u0005*\u0002048F¢\u0006\u0006\u001a\u0004\b@\u0010A\"\u0015\u0010\u001a\u001a\u00020\u0018*\u0002048F¢\u0006\u0006\u001a\u0004\bC\u0010D\"\u001b\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00180=*\u00020<8F¢\u0006\u0006\u001a\u0004\bC\u0010>\"\u0015\u0010\u001f\u001a\u00020\u001d*\u0002048F¢\u0006\u0006\u001a\u0004\bE\u0010F\"\u0015\u0010\u001f\u001a\u00020\u001d*\u0002098F¢\u0006\u0006\u001a\u0004\bE\u0010G\"\u001b\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u001d0=*\u00020<8F¢\u0006\u0006\u001a\u0004\bE\u0010>\"\u0017\u0010#\u001a\u0004\u0018\u00010\"*\u0002048G¢\u0006\u0006\u001a\u0004\bH\u0010I\"\u0017\u0010#\u001a\u0004\u0018\u00010\"*\u0002098G¢\u0006\u0006\u001a\u0004\bH\u0010J\"\u001d\u0010#\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\"0=*\u00020<8G¢\u0006\u0006\u001a\u0004\bH\u0010>\"\u0015\u0010(\u001a\u00020&*\u0002048F¢\u0006\u0006\u001a\u0004\bK\u0010L\"\u0015\u0010(\u001a\u00020&*\u0002098F¢\u0006\u0006\u001a\u0004\bK\u0010M\"\u001b\u0010(\u001a\b\u0012\u0004\u0012\u00020&0=*\u00020<8F¢\u0006\u0006\u001a\u0004\bK\u0010>\"\u0017\u0010-\u001a\u0004\u0018\u00010/*\u0002048F¢\u0006\u0006\u001a\u0004\bN\u0010O\"\u0017\u0010-\u001a\u0004\u0018\u00010/*\u0002098F¢\u0006\u0006\u001a\u0004\bN\u0010P\"\u001d\u0010-\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010/0=*\u00020<8F¢\u0006\u0006\u001a\u0004\bN\u0010>\"\u001e\u00101\u001a\u00020&*\u0002048FX\u0087\u0004¢\u0006\f\u0012\u0004\bR\u00108\u001a\u0004\bQ\u0010L\"\u001e\u00101\u001a\u00020&*\u0002098FX\u0087\u0004¢\u0006\f\u0012\u0004\bR\u0010;\u001a\u0004\bQ\u0010M\"$\u00101\u001a\b\u0012\u0004\u0012\u00020&0=*\u00020<8FX\u0087\u0004¢\u0006\f\u0012\u0004\bR\u0010?\u001a\u0004\bQ\u0010>\"\u0015\u00102\u001a\u00020&*\u0002048F¢\u0006\u0006\u001a\u0004\bS\u0010L\"\u0015\u00102\u001a\u00020&*\u0002098F¢\u0006\u0006\u001a\u0004\bS\u0010M\"\u001b\u00102\u001a\b\u0012\u0004\u0012\u00020&0=*\u00020<8F¢\u0006\u0006\u001a\u0004\bS\u0010>\"\u0015\u00103\u001a\u00020&*\u0002048F¢\u0006\u0006\u001a\u0004\bT\u0010L\"\u0015\u00103\u001a\u00020&*\u0002098F¢\u0006\u0006\u001a\u0004\bT\u0010M\"\u001b\u00103\u001a\b\u0012\u0004\u0012\u00020&0=*\u00020<8F¢\u0006\u0006\u001a\u0004\bT\u0010>¨\u0006U"}, d2 = {"Lcoil3/request/ImageRequest$Builder;", "Landroid/widget/ImageView;", "imageView", TypedValues.AttributesType.S_TARGET, "(Lcoil3/request/ImageRequest$Builder;Landroid/widget/ImageView;)Lcoil3/request/ImageRequest$Builder;", "", "drawableResId", "placeholder", "(Lcoil3/request/ImageRequest$Builder;I)Lcoil3/request/ImageRequest$Builder;", "Landroid/graphics/drawable/Drawable;", "drawable", "(Lcoil3/request/ImageRequest$Builder;Landroid/graphics/drawable/Drawable;)Lcoil3/request/ImageRequest$Builder;", "error", "fallback", "", "Lcoil3/transform/Transformation;", "transformations", "(Lcoil3/request/ImageRequest$Builder;[Lcoil3/transform/Transformation;)Lcoil3/request/ImageRequest$Builder;", "", "(Lcoil3/request/ImageRequest$Builder;Ljava/util/List;)Lcoil3/request/ImageRequest$Builder;", "durationMillis", "crossfade", "Lcoil3/ImageLoader$Builder;", "(Lcoil3/ImageLoader$Builder;I)Lcoil3/ImageLoader$Builder;", "Lcoil3/transition/Transition$Factory;", "factory", "transitionFactory", "(Lcoil3/request/ImageRequest$Builder;Lcoil3/transition/Transition$Factory;)Lcoil3/request/ImageRequest$Builder;", "(Lcoil3/ImageLoader$Builder;Lcoil3/transition/Transition$Factory;)Lcoil3/ImageLoader$Builder;", "Landroid/graphics/Bitmap$Config;", "config", "bitmapConfig", "(Lcoil3/request/ImageRequest$Builder;Landroid/graphics/Bitmap$Config;)Lcoil3/request/ImageRequest$Builder;", "(Lcoil3/ImageLoader$Builder;Landroid/graphics/Bitmap$Config;)Lcoil3/ImageLoader$Builder;", "Landroid/graphics/ColorSpace;", "colorSpace", "(Lcoil3/request/ImageRequest$Builder;Landroid/graphics/ColorSpace;)Lcoil3/request/ImageRequest$Builder;", "(Lcoil3/ImageLoader$Builder;Landroid/graphics/ColorSpace;)Lcoil3/ImageLoader$Builder;", "", "enable", "premultipliedAlpha", "(Lcoil3/request/ImageRequest$Builder;Z)Lcoil3/request/ImageRequest$Builder;", "(Lcoil3/ImageLoader$Builder;Z)Lcoil3/ImageLoader$Builder;", "Landroidx/lifecycle/LifecycleOwner;", "owner", "lifecycle", "(Lcoil3/request/ImageRequest$Builder;Landroidx/lifecycle/LifecycleOwner;)Lcoil3/request/ImageRequest$Builder;", "Landroidx/lifecycle/Lifecycle;", "(Lcoil3/request/ImageRequest$Builder;Landroidx/lifecycle/Lifecycle;)Lcoil3/request/ImageRequest$Builder;", "allowConversionToBitmap", "allowHardware", "allowRgb565", "Lcoil3/request/ImageRequest;", "getTransformations", "(Lcoil3/request/ImageRequest;)Ljava/util/List;", "getTransformations$annotations", "(Lcoil3/request/ImageRequest;)V", "Lcoil3/request/Options;", "(Lcoil3/request/Options;)Ljava/util/List;", "(Lcoil3/request/Options;)V", "Lcoil3/Extras$Key$Companion;", "Lcoil3/Extras$Key;", "(Lcoil3/Extras$Key$Companion;)Lcoil3/Extras$Key;", "(Lcoil3/Extras$Key$Companion;)V", "getCrossfadeMillis", "(Lcoil3/request/ImageRequest;)I", "crossfadeMillis", "getTransitionFactory", "(Lcoil3/request/ImageRequest;)Lcoil3/transition/Transition$Factory;", "getBitmapConfig", "(Lcoil3/request/ImageRequest;)Landroid/graphics/Bitmap$Config;", "(Lcoil3/request/Options;)Landroid/graphics/Bitmap$Config;", "getColorSpace", "(Lcoil3/request/ImageRequest;)Landroid/graphics/ColorSpace;", "(Lcoil3/request/Options;)Landroid/graphics/ColorSpace;", "getPremultipliedAlpha", "(Lcoil3/request/ImageRequest;)Z", "(Lcoil3/request/Options;)Z", "getLifecycle", "(Lcoil3/request/ImageRequest;)Landroidx/lifecycle/Lifecycle;", "(Lcoil3/request/Options;)Landroidx/lifecycle/Lifecycle;", "getAllowConversionToBitmap", "getAllowConversionToBitmap$annotations", "getAllowHardware", "getAllowRgb565", "coil-core_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ImageRequests_androidKt {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final Extras.Key f793xfbe0c504 = new Extras.Key(Transition.Factory.NONE);

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static final Extras.Key f794x3271d0aa = new Extras.Key(Utils_androidKt.getDEFAULT_BITMAP_CONFIG());

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public static final Extras.Key f795x1378447b = new Extras.Key(Utils_androidKt.getNULL_COLOR_SPACE());

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public static final Extras.Key f796x75d576dc;

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public static final Extras.Key f797x9738a56c;

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters */
    public static final Extras.Key f798x9e171bf9;

    /* renamed from: 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋, reason: contains not printable characters */
    public static final Extras.Key f799x34271fae;

    static {
        Boolean bool = Boolean.TRUE;
        f796x75d576dc = new Extras.Key(bool);
        f797x9738a56c = new Extras.Key(null);
        f798x9e171bf9 = new Extras.Key(bool);
        f799x34271fae = new Extras.Key(Boolean.FALSE);
    }

    @NotNull
    public static final ImageRequest.Builder allowHardware(@NotNull ImageRequest.Builder builder, boolean z) {
        builder.getExtras().set(f798x9e171bf9, Boolean.valueOf(z));
        return builder;
    }

    @NotNull
    public static final ImageRequest.Builder allowRgb565(@NotNull ImageRequest.Builder builder, boolean z) {
        builder.getExtras().set(f799x34271fae, Boolean.valueOf(z));
        return builder;
    }

    @NotNull
    public static final ImageRequest.Builder bitmapConfig(@NotNull ImageRequest.Builder builder, @NotNull Bitmap.Config config2) {
        builder.getExtras().set(f794x3271d0aa, config2);
        return builder;
    }

    @RequiresApi(26)
    @NotNull
    public static final ImageRequest.Builder colorSpace(@NotNull ImageRequest.Builder builder, @NotNull ColorSpace colorSpace) {
        builder.getExtras().set(f795x1378447b, colorSpace);
        return builder;
    }

    @NotNull
    public static final ImageLoader.Builder crossfade(@NotNull ImageLoader.Builder builder, int i) {
        Transition.Factory factory;
        if (i > 0) {
            factory = new CrossfadeTransition.Factory(i, false, 2, null);
        } else {
            factory = Transition.Factory.NONE;
        }
        return transitionFactory(builder, factory);
    }

    @NotNull
    public static final ImageRequest.Builder error(@NotNull ImageRequest.Builder builder, @DrawableRes int i) {
        return builder.error(new C0593xe54e5533(i, 2));
    }

    @NotNull
    public static final ImageRequest.Builder fallback(@NotNull ImageRequest.Builder builder, @DrawableRes int i) {
        return builder.fallback(new C0593xe54e5533(i, 1));
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Kept for binary compatibility.")
    public static /* synthetic */ void getAllowConversionToBitmap$annotations(Extras.Key.Companion companion) {
    }

    public static final boolean getAllowHardware(@NotNull ImageRequest imageRequest) {
        return ((Boolean) ExtrasKt.getExtra(imageRequest, f798x9e171bf9)).booleanValue();
    }

    public static final boolean getAllowRgb565(@NotNull ImageRequest imageRequest) {
        return ((Boolean) ExtrasKt.getExtra(imageRequest, f799x34271fae)).booleanValue();
    }

    @NotNull
    public static final Bitmap.Config getBitmapConfig(@NotNull ImageRequest imageRequest) {
        return (Bitmap.Config) ExtrasKt.getExtra(imageRequest, f794x3271d0aa);
    }

    @RequiresApi(26)
    @Nullable
    public static final ColorSpace getColorSpace(@NotNull ImageRequest imageRequest) {
        return AbstractC0852xe0c86957.m3394x95f25580(ExtrasKt.getExtra(imageRequest, f795x1378447b));
    }

    public static final int getCrossfadeMillis(@NotNull ImageRequest imageRequest) {
        CrossfadeTransition.Factory factory;
        Transition.Factory transitionFactory = getTransitionFactory(imageRequest);
        if (transitionFactory instanceof CrossfadeTransition.Factory) {
            factory = (CrossfadeTransition.Factory) transitionFactory;
        } else {
            factory = null;
        }
        if (factory != null) {
            return factory.getDurationMillis();
        }
        return 0;
    }

    @Nullable
    public static final Lifecycle getLifecycle(@NotNull ImageRequest imageRequest) {
        return (Lifecycle) ExtrasKt.getExtra(imageRequest, f797x9738a56c);
    }

    public static final boolean getPremultipliedAlpha(@NotNull ImageRequest imageRequest) {
        return ((Boolean) ExtrasKt.getExtra(imageRequest, f796x75d576dc)).booleanValue();
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Kept for binary compatibility.")
    public static /* synthetic */ void getTransformations$annotations(Extras.Key.Companion companion) {
    }

    @NotNull
    public static final Transition.Factory getTransitionFactory(@NotNull ImageRequest imageRequest) {
        return (Transition.Factory) ExtrasKt.getExtra(imageRequest, f793xfbe0c504);
    }

    @NotNull
    public static final ImageRequest.Builder lifecycle(@NotNull ImageRequest.Builder builder, @Nullable LifecycleOwner lifecycleOwner) {
        return lifecycle(builder, lifecycleOwner != null ? lifecycleOwner.getLifecycle() : null);
    }

    @NotNull
    public static final ImageRequest.Builder placeholder(@NotNull ImageRequest.Builder builder, @DrawableRes int i) {
        return builder.placeholder(new C0593xe54e5533(i, 3));
    }

    @NotNull
    public static final ImageRequest.Builder premultipliedAlpha(@NotNull ImageRequest.Builder builder, boolean z) {
        builder.getExtras().set(f796x75d576dc, Boolean.valueOf(z));
        return builder;
    }

    @NotNull
    public static final ImageRequest.Builder target(@NotNull ImageRequest.Builder builder, @NotNull ImageView imageView) {
        return builder.target(new ImageViewTarget(imageView));
    }

    @NotNull
    public static final ImageRequest.Builder transitionFactory(@NotNull ImageRequest.Builder builder, @NotNull Transition.Factory factory) {
        builder.getExtras().set(f793xfbe0c504, factory);
        return builder;
    }

    @NotNull
    public static final ImageLoader.Builder allowHardware(@NotNull ImageLoader.Builder builder, boolean z) {
        builder.getExtras().set(f798x9e171bf9, Boolean.valueOf(z));
        return builder;
    }

    @NotNull
    public static final ImageLoader.Builder allowRgb565(@NotNull ImageLoader.Builder builder, boolean z) {
        builder.getExtras().set(f799x34271fae, Boolean.valueOf(z));
        return builder;
    }

    @NotNull
    public static final ImageLoader.Builder bitmapConfig(@NotNull ImageLoader.Builder builder, @NotNull Bitmap.Config config2) {
        builder.getExtras().set(f794x3271d0aa, config2);
        return builder;
    }

    @RequiresApi(26)
    @NotNull
    public static final ImageLoader.Builder colorSpace(@NotNull ImageLoader.Builder builder, @NotNull ColorSpace colorSpace) {
        builder.getExtras().set(f795x1378447b, colorSpace);
        return builder;
    }

    @NotNull
    public static final ImageRequest.Builder error(@NotNull ImageRequest.Builder builder, @Nullable Drawable drawable) {
        return builder.error(drawable != null ? Image_androidKt.asImage(drawable) : null);
    }

    @NotNull
    public static final ImageRequest.Builder fallback(@NotNull ImageRequest.Builder builder, @Nullable Drawable drawable) {
        return builder.fallback(drawable != null ? Image_androidKt.asImage(drawable) : null);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Kept for binary compatibility.")
    public static /* synthetic */ void getAllowConversionToBitmap$annotations(ImageRequest imageRequest) {
    }

    public static final boolean getAllowHardware(@NotNull Options options) {
        return ((Boolean) ExtrasKt.getExtra(options, f798x9e171bf9)).booleanValue();
    }

    public static final boolean getAllowRgb565(@NotNull Options options) {
        return ((Boolean) ExtrasKt.getExtra(options, f799x34271fae)).booleanValue();
    }

    @NotNull
    public static final Bitmap.Config getBitmapConfig(@NotNull Options options) {
        return (Bitmap.Config) ExtrasKt.getExtra(options, f794x3271d0aa);
    }

    @RequiresApi(26)
    @Nullable
    public static final ColorSpace getColorSpace(@NotNull Options options) {
        return AbstractC0852xe0c86957.m3394x95f25580(ExtrasKt.getExtra(options, f795x1378447b));
    }

    @Nullable
    public static final Lifecycle getLifecycle(@NotNull Options options) {
        return (Lifecycle) ExtrasKt.getExtra(options, f797x9738a56c);
    }

    public static final boolean getPremultipliedAlpha(@NotNull Options options) {
        return ((Boolean) ExtrasKt.getExtra(options, f796x75d576dc)).booleanValue();
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Kept for binary compatibility.")
    public static /* synthetic */ void getTransformations$annotations(ImageRequest imageRequest) {
    }

    @NotNull
    public static final Extras.Key<Transition.Factory> getTransitionFactory(@NotNull Extras.Key.Companion companion) {
        return f793xfbe0c504;
    }

    @NotNull
    public static final ImageRequest.Builder lifecycle(@NotNull ImageRequest.Builder builder, @Nullable Lifecycle lifecycle) {
        builder.getExtras().set(f797x9738a56c, lifecycle);
        return builder;
    }

    @NotNull
    public static final ImageRequest.Builder placeholder(@NotNull ImageRequest.Builder builder, @Nullable Drawable drawable) {
        return builder.placeholder(drawable != null ? Image_androidKt.asImage(drawable) : null);
    }

    @NotNull
    public static final ImageLoader.Builder premultipliedAlpha(@NotNull ImageLoader.Builder builder, boolean z) {
        builder.getExtras().set(f796x75d576dc, Boolean.valueOf(z));
        return builder;
    }

    @NotNull
    public static final ImageLoader.Builder transitionFactory(@NotNull ImageLoader.Builder builder, @NotNull Transition.Factory factory) {
        builder.getExtras().set(f793xfbe0c504, factory);
        return builder;
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Kept for binary compatibility.")
    public static /* synthetic */ void getAllowConversionToBitmap$annotations(Options options) {
    }

    @NotNull
    public static final Extras.Key<Boolean> getAllowHardware(@NotNull Extras.Key.Companion companion) {
        return f798x9e171bf9;
    }

    @NotNull
    public static final Extras.Key<Boolean> getAllowRgb565(@NotNull Extras.Key.Companion companion) {
        return f799x34271fae;
    }

    @NotNull
    public static final Extras.Key<Bitmap.Config> getBitmapConfig(@NotNull Extras.Key.Companion companion) {
        return f794x3271d0aa;
    }

    @RequiresApi(26)
    @NotNull
    public static final Extras.Key<ColorSpace> getColorSpace(@NotNull Extras.Key.Companion companion) {
        return f795x1378447b;
    }

    @NotNull
    public static final Extras.Key<Lifecycle> getLifecycle(@NotNull Extras.Key.Companion companion) {
        return f797x9738a56c;
    }

    @NotNull
    public static final Extras.Key<Boolean> getPremultipliedAlpha(@NotNull Extras.Key.Companion companion) {
        return f796x75d576dc;
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Kept for binary compatibility.")
    public static /* synthetic */ void getTransformations$annotations(Options options) {
    }

    @NotNull
    public static final ImageRequest.Builder crossfade(@NotNull ImageRequest.Builder builder, int i) {
        Transition.Factory factory;
        if (i > 0) {
            factory = new CrossfadeTransition.Factory(i, false, 2, null);
        } else {
            factory = Transition.Factory.NONE;
        }
        return transitionFactory(builder, factory);
    }
}
