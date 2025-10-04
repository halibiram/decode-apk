.class public final Lcoil3/request/ImageRequests_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0018\u001a\u0019\u0010\u0003\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u001a\u001b\u0010\u0007\u001a\u00020\u0000*\u00020\u00002\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u001a\u001b\u0010\u0007\u001a\u00020\u0000*\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\u0007\u0010\u000b\u001a\u001b\u0010\u000c\u001a\u00020\u0000*\u00020\u00002\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u000c\u0010\u0008\u001a\u001b\u0010\u000c\u001a\u00020\u0000*\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\u000c\u0010\u000b\u001a\u001b\u0010\r\u001a\u00020\u0000*\u00020\u00002\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\r\u0010\u0008\u001a\u001b\u0010\r\u001a\u00020\u0000*\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\r\u0010\u000b\u001a\'\u0010\u0010\u001a\u00020\u0000*\u00020\u00002\u0012\u0010\u0010\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000f0\u000e\"\u00020\u000fH\u0007\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u001a!\u0010\u0010\u001a\u00020\u0000*\u00020\u00002\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0012H\u0007\u00a2\u0006\u0004\u0008\u0010\u0010\u0013\u001a\u0019\u0010\u0015\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0015\u0010\u0008\u001a\u0019\u0010\u0015\u001a\u00020\u0016*\u00020\u00162\u0006\u0010\u0014\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0015\u0010\u0017\u001a\u0019\u0010\u001a\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0018\u00a2\u0006\u0004\u0008\u001a\u0010\u001b\u001a\u0019\u0010\u001a\u001a\u00020\u0016*\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u0018\u00a2\u0006\u0004\u0008\u001a\u0010\u001c\u001a\u0019\u0010\u001f\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u001d\u00a2\u0006\u0004\u0008\u001f\u0010 \u001a\u0019\u0010\u001f\u001a\u00020\u0016*\u00020\u00162\u0006\u0010\u001e\u001a\u00020\u001d\u00a2\u0006\u0004\u0008\u001f\u0010!\u001a\u001b\u0010#\u001a\u00020\u0000*\u00020\u00002\u0006\u0010#\u001a\u00020\"H\u0007\u00a2\u0006\u0004\u0008#\u0010$\u001a\u001b\u0010#\u001a\u00020\u0016*\u00020\u00162\u0006\u0010#\u001a\u00020\"H\u0007\u00a2\u0006\u0004\u0008#\u0010%\u001a\u0019\u0010(\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\'\u001a\u00020&\u00a2\u0006\u0004\u0008(\u0010)\u001a\u0019\u0010(\u001a\u00020\u0016*\u00020\u00162\u0006\u0010\'\u001a\u00020&\u00a2\u0006\u0004\u0008(\u0010*\u001a\u001b\u0010-\u001a\u00020\u0000*\u00020\u00002\u0008\u0010,\u001a\u0004\u0018\u00010+\u00a2\u0006\u0004\u0008-\u0010.\u001a\u001b\u0010-\u001a\u00020\u0000*\u00020\u00002\u0008\u0010-\u001a\u0004\u0018\u00010/\u00a2\u0006\u0004\u0008-\u00100\u001a\u001b\u00101\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\'\u001a\u00020&H\u0007\u00a2\u0006\u0004\u00081\u0010)\u001a\u001b\u00101\u001a\u00020\u0016*\u00020\u00162\u0006\u0010\'\u001a\u00020&H\u0007\u00a2\u0006\u0004\u00081\u0010*\u001a\u0019\u00102\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\'\u001a\u00020&\u00a2\u0006\u0004\u00082\u0010)\u001a\u0019\u00102\u001a\u00020\u0016*\u00020\u00162\u0006\u0010\'\u001a\u00020&\u00a2\u0006\u0004\u00082\u0010*\u001a\u0019\u00103\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\'\u001a\u00020&\u00a2\u0006\u0004\u00083\u0010)\u001a\u0019\u00103\u001a\u00020\u0016*\u00020\u00162\u0006\u0010\'\u001a\u00020&\u00a2\u0006\u0004\u00083\u0010*\"$\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0012*\u0002048FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u00087\u00108\u001a\u0004\u00085\u00106\"$\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0012*\u0002098FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u00087\u0010;\u001a\u0004\u00085\u0010:\"*\u0010\u0010\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u00120=*\u00020<8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u00087\u0010?\u001a\u0004\u00085\u0010>\"\u0015\u0010B\u001a\u00020\u0005*\u0002048F\u00a2\u0006\u0006\u001a\u0004\u0008@\u0010A\"\u0015\u0010\u001a\u001a\u00020\u0018*\u0002048F\u00a2\u0006\u0006\u001a\u0004\u0008C\u0010D\"\u001b\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00180=*\u00020<8F\u00a2\u0006\u0006\u001a\u0004\u0008C\u0010>\"\u0015\u0010\u001f\u001a\u00020\u001d*\u0002048F\u00a2\u0006\u0006\u001a\u0004\u0008E\u0010F\"\u0015\u0010\u001f\u001a\u00020\u001d*\u0002098F\u00a2\u0006\u0006\u001a\u0004\u0008E\u0010G\"\u001b\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u001d0=*\u00020<8F\u00a2\u0006\u0006\u001a\u0004\u0008E\u0010>\"\u0017\u0010#\u001a\u0004\u0018\u00010\"*\u0002048G\u00a2\u0006\u0006\u001a\u0004\u0008H\u0010I\"\u0017\u0010#\u001a\u0004\u0018\u00010\"*\u0002098G\u00a2\u0006\u0006\u001a\u0004\u0008H\u0010J\"\u001d\u0010#\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\"0=*\u00020<8G\u00a2\u0006\u0006\u001a\u0004\u0008H\u0010>\"\u0015\u0010(\u001a\u00020&*\u0002048F\u00a2\u0006\u0006\u001a\u0004\u0008K\u0010L\"\u0015\u0010(\u001a\u00020&*\u0002098F\u00a2\u0006\u0006\u001a\u0004\u0008K\u0010M\"\u001b\u0010(\u001a\u0008\u0012\u0004\u0012\u00020&0=*\u00020<8F\u00a2\u0006\u0006\u001a\u0004\u0008K\u0010>\"\u0017\u0010-\u001a\u0004\u0018\u00010/*\u0002048F\u00a2\u0006\u0006\u001a\u0004\u0008N\u0010O\"\u0017\u0010-\u001a\u0004\u0018\u00010/*\u0002098F\u00a2\u0006\u0006\u001a\u0004\u0008N\u0010P\"\u001d\u0010-\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010/0=*\u00020<8F\u00a2\u0006\u0006\u001a\u0004\u0008N\u0010>\"\u001e\u00101\u001a\u00020&*\u0002048FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008R\u00108\u001a\u0004\u0008Q\u0010L\"\u001e\u00101\u001a\u00020&*\u0002098FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008R\u0010;\u001a\u0004\u0008Q\u0010M\"$\u00101\u001a\u0008\u0012\u0004\u0012\u00020&0=*\u00020<8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008R\u0010?\u001a\u0004\u0008Q\u0010>\"\u0015\u00102\u001a\u00020&*\u0002048F\u00a2\u0006\u0006\u001a\u0004\u0008S\u0010L\"\u0015\u00102\u001a\u00020&*\u0002098F\u00a2\u0006\u0006\u001a\u0004\u0008S\u0010M\"\u001b\u00102\u001a\u0008\u0012\u0004\u0012\u00020&0=*\u00020<8F\u00a2\u0006\u0006\u001a\u0004\u0008S\u0010>\"\u0015\u00103\u001a\u00020&*\u0002048F\u00a2\u0006\u0006\u001a\u0004\u0008T\u0010L\"\u0015\u00103\u001a\u00020&*\u0002098F\u00a2\u0006\u0006\u001a\u0004\u0008T\u0010M\"\u001b\u00103\u001a\u0008\u0012\u0004\u0012\u00020&0=*\u00020<8F\u00a2\u0006\u0006\u001a\u0004\u0008T\u0010>\u00a8\u0006U"
    }
    d2 = {
        "Lcoil3/request/ImageRequest$Builder;",
        "Landroid/widget/ImageView;",
        "imageView",
        "target",
        "(Lcoil3/request/ImageRequest$Builder;Landroid/widget/ImageView;)Lcoil3/request/ImageRequest$Builder;",
        "",
        "drawableResId",
        "placeholder",
        "(Lcoil3/request/ImageRequest$Builder;I)Lcoil3/request/ImageRequest$Builder;",
        "Landroid/graphics/drawable/Drawable;",
        "drawable",
        "(Lcoil3/request/ImageRequest$Builder;Landroid/graphics/drawable/Drawable;)Lcoil3/request/ImageRequest$Builder;",
        "error",
        "fallback",
        "",
        "Lcoil3/transform/Transformation;",
        "transformations",
        "(Lcoil3/request/ImageRequest$Builder;[Lcoil3/transform/Transformation;)Lcoil3/request/ImageRequest$Builder;",
        "",
        "(Lcoil3/request/ImageRequest$Builder;Ljava/util/List;)Lcoil3/request/ImageRequest$Builder;",
        "durationMillis",
        "crossfade",
        "Lcoil3/ImageLoader$Builder;",
        "(Lcoil3/ImageLoader$Builder;I)Lcoil3/ImageLoader$Builder;",
        "Lcoil3/transition/Transition$Factory;",
        "factory",
        "transitionFactory",
        "(Lcoil3/request/ImageRequest$Builder;Lcoil3/transition/Transition$Factory;)Lcoil3/request/ImageRequest$Builder;",
        "(Lcoil3/ImageLoader$Builder;Lcoil3/transition/Transition$Factory;)Lcoil3/ImageLoader$Builder;",
        "Landroid/graphics/Bitmap$Config;",
        "config",
        "bitmapConfig",
        "(Lcoil3/request/ImageRequest$Builder;Landroid/graphics/Bitmap$Config;)Lcoil3/request/ImageRequest$Builder;",
        "(Lcoil3/ImageLoader$Builder;Landroid/graphics/Bitmap$Config;)Lcoil3/ImageLoader$Builder;",
        "Landroid/graphics/ColorSpace;",
        "colorSpace",
        "(Lcoil3/request/ImageRequest$Builder;Landroid/graphics/ColorSpace;)Lcoil3/request/ImageRequest$Builder;",
        "(Lcoil3/ImageLoader$Builder;Landroid/graphics/ColorSpace;)Lcoil3/ImageLoader$Builder;",
        "",
        "enable",
        "premultipliedAlpha",
        "(Lcoil3/request/ImageRequest$Builder;Z)Lcoil3/request/ImageRequest$Builder;",
        "(Lcoil3/ImageLoader$Builder;Z)Lcoil3/ImageLoader$Builder;",
        "Landroidx/lifecycle/LifecycleOwner;",
        "owner",
        "lifecycle",
        "(Lcoil3/request/ImageRequest$Builder;Landroidx/lifecycle/LifecycleOwner;)Lcoil3/request/ImageRequest$Builder;",
        "Landroidx/lifecycle/Lifecycle;",
        "(Lcoil3/request/ImageRequest$Builder;Landroidx/lifecycle/Lifecycle;)Lcoil3/request/ImageRequest$Builder;",
        "allowConversionToBitmap",
        "allowHardware",
        "allowRgb565",
        "Lcoil3/request/ImageRequest;",
        "getTransformations",
        "(Lcoil3/request/ImageRequest;)Ljava/util/List;",
        "getTransformations$annotations",
        "(Lcoil3/request/ImageRequest;)V",
        "Lcoil3/request/Options;",
        "(Lcoil3/request/Options;)Ljava/util/List;",
        "(Lcoil3/request/Options;)V",
        "Lcoil3/Extras$Key$Companion;",
        "Lcoil3/Extras$Key;",
        "(Lcoil3/Extras$Key$Companion;)Lcoil3/Extras$Key;",
        "(Lcoil3/Extras$Key$Companion;)V",
        "getCrossfadeMillis",
        "(Lcoil3/request/ImageRequest;)I",
        "crossfadeMillis",
        "getTransitionFactory",
        "(Lcoil3/request/ImageRequest;)Lcoil3/transition/Transition$Factory;",
        "getBitmapConfig",
        "(Lcoil3/request/ImageRequest;)Landroid/graphics/Bitmap$Config;",
        "(Lcoil3/request/Options;)Landroid/graphics/Bitmap$Config;",
        "getColorSpace",
        "(Lcoil3/request/ImageRequest;)Landroid/graphics/ColorSpace;",
        "(Lcoil3/request/Options;)Landroid/graphics/ColorSpace;",
        "getPremultipliedAlpha",
        "(Lcoil3/request/ImageRequest;)Z",
        "(Lcoil3/request/Options;)Z",
        "getLifecycle",
        "(Lcoil3/request/ImageRequest;)Landroidx/lifecycle/Lifecycle;",
        "(Lcoil3/request/Options;)Landroidx/lifecycle/Lifecycle;",
        "getAllowConversionToBitmap",
        "getAllowConversionToBitmap$annotations",
        "getAllowHardware",
        "getAllowRgb565",
        "coil-core_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lcoil3/Extras$Key;

.field public static final 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lcoil3/Extras$Key;

.field public static final 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Lcoil3/Extras$Key;

.field public static final 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:Lcoil3/Extras$Key;

.field public static final 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:Lcoil3/Extras$Key;

.field public static final 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤:Lcoil3/Extras$Key;

.field public static final 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋:Lcoil3/Extras$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcoil3/Extras$Key;

    .line 2
    .line 3
    sget-object v1, Lcoil3/transition/Transition$Factory;->NONE:Lcoil3/transition/Transition$Factory;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcoil3/Extras$Key;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcoil3/request/ImageRequests_androidKt;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lcoil3/Extras$Key;

    .line 9
    .line 10
    new-instance v0, Lcoil3/Extras$Key;

    .line 11
    .line 12
    invoke-static {}, Lcoil3/util/Utils_androidKt;->getDEFAULT_BITMAP_CONFIG()Landroid/graphics/Bitmap$Config;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-direct {v0, v1}, Lcoil3/Extras$Key;-><init>(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcoil3/request/ImageRequests_androidKt;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lcoil3/Extras$Key;

    .line 20
    .line 21
    new-instance v0, Lcoil3/Extras$Key;

    .line 22
    .line 23
    invoke-static {}, Lcoil3/util/Utils_androidKt;->getNULL_COLOR_SPACE()Landroid/graphics/ColorSpace;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-direct {v0, v1}, Lcoil3/Extras$Key;-><init>(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lcoil3/request/ImageRequests_androidKt;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Lcoil3/Extras$Key;

    .line 31
    .line 32
    new-instance v0, Lcoil3/Extras$Key;

    .line 33
    .line 34
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 35
    .line 36
    invoke-direct {v0, v1}, Lcoil3/Extras$Key;-><init>(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcoil3/request/ImageRequests_androidKt;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:Lcoil3/Extras$Key;

    .line 40
    .line 41
    new-instance v0, Lcoil3/Extras$Key;

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-direct {v0, v2}, Lcoil3/Extras$Key;-><init>(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcoil3/request/ImageRequests_androidKt;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:Lcoil3/Extras$Key;

    .line 48
    .line 49
    new-instance v0, Lcoil3/Extras$Key;

    .line 50
    .line 51
    invoke-direct {v0, v1}, Lcoil3/Extras$Key;-><init>(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    sput-object v0, Lcoil3/request/ImageRequests_androidKt;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤:Lcoil3/Extras$Key;

    .line 55
    .line 56
    new-instance v0, Lcoil3/Extras$Key;

    .line 57
    .line 58
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 59
    .line 60
    invoke-direct {v0, v1}, Lcoil3/Extras$Key;-><init>(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    sput-object v0, Lcoil3/request/ImageRequests_androidKt;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋:Lcoil3/Extras$Key;

    .line 64
    .line 65
    return-void
.end method

.method public static final synthetic allowConversionToBitmap(Lcoil3/ImageLoader$Builder;Z)Lcoil3/ImageLoader$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Kept for binary compatibility."
    .end annotation

    .line 2
    invoke-static {p0, p1}, Lcoil3/request/ImageRequestsKt;->allowConversionToBitmap(Lcoil3/ImageLoader$Builder;Z)Lcoil3/ImageLoader$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic allowConversionToBitmap(Lcoil3/request/ImageRequest$Builder;Z)Lcoil3/request/ImageRequest$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Kept for binary compatibility."
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcoil3/request/ImageRequestsKt;->allowConversionToBitmap(Lcoil3/request/ImageRequest$Builder;Z)Lcoil3/request/ImageRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static final allowHardware(Lcoil3/ImageLoader$Builder;Z)Lcoil3/ImageLoader$Builder;
    .locals 2
    .param p0    # Lcoil3/ImageLoader$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcoil3/ImageLoader$Builder;->getExtras()Lcoil3/Extras$Builder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sget-object v1, Lcoil3/request/ImageRequests_androidKt;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤:Lcoil3/Extras$Key;

    invoke-virtual {v0, v1, p1}, Lcoil3/Extras$Builder;->set(Lcoil3/Extras$Key;Ljava/lang/Object;)Lcoil3/Extras$Builder;

    return-object p0
.end method

.method public static final allowHardware(Lcoil3/request/ImageRequest$Builder;Z)Lcoil3/request/ImageRequest$Builder;
    .locals 2
    .param p0    # Lcoil3/request/ImageRequest$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcoil3/request/ImageRequest$Builder;->getExtras()Lcoil3/Extras$Builder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sget-object v1, Lcoil3/request/ImageRequests_androidKt;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤:Lcoil3/Extras$Key;

    invoke-virtual {v0, v1, p1}, Lcoil3/Extras$Builder;->set(Lcoil3/Extras$Key;Ljava/lang/Object;)Lcoil3/Extras$Builder;

    return-object p0
.end method

.method public static final allowRgb565(Lcoil3/ImageLoader$Builder;Z)Lcoil3/ImageLoader$Builder;
    .locals 2
    .param p0    # Lcoil3/ImageLoader$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcoil3/ImageLoader$Builder;->getExtras()Lcoil3/Extras$Builder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sget-object v1, Lcoil3/request/ImageRequests_androidKt;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋:Lcoil3/Extras$Key;

    invoke-virtual {v0, v1, p1}, Lcoil3/Extras$Builder;->set(Lcoil3/Extras$Key;Ljava/lang/Object;)Lcoil3/Extras$Builder;

    return-object p0
.end method

.method public static final allowRgb565(Lcoil3/request/ImageRequest$Builder;Z)Lcoil3/request/ImageRequest$Builder;
    .locals 2
    .param p0    # Lcoil3/request/ImageRequest$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcoil3/request/ImageRequest$Builder;->getExtras()Lcoil3/Extras$Builder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sget-object v1, Lcoil3/request/ImageRequests_androidKt;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋:Lcoil3/Extras$Key;

    invoke-virtual {v0, v1, p1}, Lcoil3/Extras$Builder;->set(Lcoil3/Extras$Key;Ljava/lang/Object;)Lcoil3/Extras$Builder;

    return-object p0
.end method

.method public static final bitmapConfig(Lcoil3/ImageLoader$Builder;Landroid/graphics/Bitmap$Config;)Lcoil3/ImageLoader$Builder;
    .locals 2
    .param p0    # Lcoil3/ImageLoader$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Bitmap$Config;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcoil3/ImageLoader$Builder;->getExtras()Lcoil3/Extras$Builder;

    move-result-object v0

    sget-object v1, Lcoil3/request/ImageRequests_androidKt;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lcoil3/Extras$Key;

    invoke-virtual {v0, v1, p1}, Lcoil3/Extras$Builder;->set(Lcoil3/Extras$Key;Ljava/lang/Object;)Lcoil3/Extras$Builder;

    return-object p0
.end method

.method public static final bitmapConfig(Lcoil3/request/ImageRequest$Builder;Landroid/graphics/Bitmap$Config;)Lcoil3/request/ImageRequest$Builder;
    .locals 2
    .param p0    # Lcoil3/request/ImageRequest$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Bitmap$Config;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcoil3/request/ImageRequest$Builder;->getExtras()Lcoil3/Extras$Builder;

    move-result-object v0

    sget-object v1, Lcoil3/request/ImageRequests_androidKt;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lcoil3/Extras$Key;

    invoke-virtual {v0, v1, p1}, Lcoil3/Extras$Builder;->set(Lcoil3/Extras$Key;Ljava/lang/Object;)Lcoil3/Extras$Builder;

    return-object p0
.end method

.method public static final colorSpace(Lcoil3/ImageLoader$Builder;Landroid/graphics/ColorSpace;)Lcoil3/ImageLoader$Builder;
    .locals 2
    .param p0    # Lcoil3/ImageLoader$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/ColorSpace;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcoil3/ImageLoader$Builder;->getExtras()Lcoil3/Extras$Builder;

    move-result-object v0

    sget-object v1, Lcoil3/request/ImageRequests_androidKt;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Lcoil3/Extras$Key;

    invoke-virtual {v0, v1, p1}, Lcoil3/Extras$Builder;->set(Lcoil3/Extras$Key;Ljava/lang/Object;)Lcoil3/Extras$Builder;

    return-object p0
.end method

.method public static final colorSpace(Lcoil3/request/ImageRequest$Builder;Landroid/graphics/ColorSpace;)Lcoil3/request/ImageRequest$Builder;
    .locals 2
    .param p0    # Lcoil3/request/ImageRequest$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/ColorSpace;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcoil3/request/ImageRequest$Builder;->getExtras()Lcoil3/Extras$Builder;

    move-result-object v0

    sget-object v1, Lcoil3/request/ImageRequests_androidKt;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Lcoil3/Extras$Key;

    invoke-virtual {v0, v1, p1}, Lcoil3/Extras$Builder;->set(Lcoil3/Extras$Key;Ljava/lang/Object;)Lcoil3/Extras$Builder;

    return-object p0
.end method

.method public static final crossfade(Lcoil3/ImageLoader$Builder;I)Lcoil3/ImageLoader$Builder;
    .locals 4
    .param p0    # Lcoil3/ImageLoader$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-lez p1, :cond_0

    .line 1
    new-instance v0, Lcoil3/transition/CrossfadeTransition$Factory;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, p1, v2, v3, v1}, Lcoil3/transition/CrossfadeTransition$Factory;-><init>(IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcoil3/transition/Transition$Factory;->NONE:Lcoil3/transition/Transition$Factory;

    .line 3
    :goto_0
    invoke-static {p0, v0}, Lcoil3/request/ImageRequests_androidKt;->transitionFactory(Lcoil3/ImageLoader$Builder;Lcoil3/transition/Transition$Factory;)Lcoil3/ImageLoader$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static final crossfade(Lcoil3/request/ImageRequest$Builder;I)Lcoil3/request/ImageRequest$Builder;
    .locals 4
    .param p0    # Lcoil3/request/ImageRequest$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-lez p1, :cond_0

    .line 4
    new-instance v0, Lcoil3/transition/CrossfadeTransition$Factory;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, p1, v2, v3, v1}, Lcoil3/transition/CrossfadeTransition$Factory;-><init>(IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcoil3/transition/Transition$Factory;->NONE:Lcoil3/transition/Transition$Factory;

    .line 6
    :goto_0
    invoke-static {p0, v0}, Lcoil3/request/ImageRequests_androidKt;->transitionFactory(Lcoil3/request/ImageRequest$Builder;Lcoil3/transition/Transition$Factory;)Lcoil3/request/ImageRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static final error(Lcoil3/request/ImageRequest$Builder;I)Lcoil3/request/ImageRequest$Builder;
    .locals 2
    .param p0    # Lcoil3/request/ImageRequest$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, L됴디뒙듽뎨땨돠땬듔땱뒉뒋둔딄땠딻딸듰땠땐딄뒛딄돰뒉땅딝땭딁돤듻뒐땝뒾듔듰땮뒀딜둡땐딌땫디땸뎬뎻땧드됫돷돶딐돳뒘뎸땩땭땳땯땟듔듔땬땍뒼돴땐땄땪됩돴돛둬도딸땰뒝땍둡땨듻땤땪뎸땹듰뒨땰딹듌땐듽됴됴돨됐둑듐뎬돼둔되땰땹뎸됩땍땥뒬뎨듟뒐딸듰딃딨뎡땱땳뒾드땐딁뒉땵땃됫뎽득;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, L됴디뒙듽뎨땨돠땬듔땱뒉뒋둔딄땠딻딸듰땠땐딄뒛딄돰뒉땅딝땭딁돤듻뒐땝뒾듔듰땮뒀딜둡땐딌땫디땸뎬뎻땧드됫돷돶딐돳뒘뎸땩땭땳땯땟듔듔땬땍뒼돴땐땄땪됩돴돛둬도딸땰뒝땍둡땨듻땤땪뎸땹듰뒨땰딹듌땐듽됴됴돨됐둑듐뎬돼둔되땰땹뎸됩땍땥뒬뎨듟뒐딸듰딃딨뎡땱땳뒾드땐딁뒉땵땃됫뎽득;-><init>(II)V

    invoke-virtual {p0, v0}, Lcoil3/request/ImageRequest$Builder;->error(Lkotlin/jvm/functions/Function1;)Lcoil3/request/ImageRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static final error(Lcoil3/request/ImageRequest$Builder;Landroid/graphics/drawable/Drawable;)Lcoil3/request/ImageRequest$Builder;
    .locals 0
    .param p0    # Lcoil3/request/ImageRequest$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Lcoil3/Image_androidKt;->asImage(Landroid/graphics/drawable/Drawable;)Lcoil3/Image;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcoil3/request/ImageRequest$Builder;->error(Lcoil3/Image;)Lcoil3/request/ImageRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static final fallback(Lcoil3/request/ImageRequest$Builder;I)Lcoil3/request/ImageRequest$Builder;
    .locals 2
    .param p0    # Lcoil3/request/ImageRequest$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, L됴디뒙듽뎨땨돠땬듔땱뒉뒋둔딄땠딻딸듰땠땐딄뒛딄돰뒉땅딝땭딁돤듻뒐땝뒾듔듰땮뒀딜둡땐딌땫디땸뎬뎻땧드됫돷돶딐돳뒘뎸땩땭땳땯땟듔듔땬땍뒼돴땐땄땪됩돴돛둬도딸땰뒝땍둡땨듻땤땪뎸땹듰뒨땰딹듌땐듽됴됴돨됐둑듐뎬돼둔되땰땹뎸됩땍땥뒬뎨듟뒐딸듰딃딨뎡땱땳뒾드땐딁뒉땵땃됫뎽득;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, L됴디뒙듽뎨땨돠땬듔땱뒉뒋둔딄땠딻딸듰땠땐딄뒛딄돰뒉땅딝땭딁돤듻뒐땝뒾듔듰땮뒀딜둡땐딌땫디땸뎬뎻땧드됫돷돶딐돳뒘뎸땩땭땳땯땟듔듔땬땍뒼돴땐땄땪됩돴돛둬도딸땰뒝땍둡땨듻땤땪뎸땹듰뒨땰딹듌땐듽됴됴돨됐둑듐뎬돼둔되땰땹뎸됩땍땥뒬뎨듟뒐딸듰딃딨뎡땱땳뒾드땐딁뒉땵땃됫뎽득;-><init>(II)V

    invoke-virtual {p0, v0}, Lcoil3/request/ImageRequest$Builder;->fallback(Lkotlin/jvm/functions/Function1;)Lcoil3/request/ImageRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static final fallback(Lcoil3/request/ImageRequest$Builder;Landroid/graphics/drawable/Drawable;)Lcoil3/request/ImageRequest$Builder;
    .locals 0
    .param p0    # Lcoil3/request/ImageRequest$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Lcoil3/Image_androidKt;->asImage(Landroid/graphics/drawable/Drawable;)Lcoil3/Image;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcoil3/request/ImageRequest$Builder;->fallback(Lcoil3/Image;)Lcoil3/request/ImageRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic getAllowConversionToBitmap(Lcoil3/Extras$Key$Companion;)Lcoil3/Extras$Key;
    .locals 0

    .line 3
    invoke-static {p0}, Lcoil3/request/ImageRequestsKt;->getAllowConversionToBitmap(Lcoil3/Extras$Key$Companion;)Lcoil3/Extras$Key;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic getAllowConversionToBitmap(Lcoil3/request/ImageRequest;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcoil3/request/ImageRequestsKt;->getAllowConversionToBitmap(Lcoil3/request/ImageRequest;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic getAllowConversionToBitmap(Lcoil3/request/Options;)Z
    .locals 0

    .line 2
    invoke-static {p0}, Lcoil3/request/ImageRequestsKt;->getAllowConversionToBitmap(Lcoil3/request/Options;)Z

    move-result p0

    return p0
.end method

.method public static synthetic getAllowConversionToBitmap$annotations(Lcoil3/Extras$Key$Companion;)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Kept for binary compatibility."
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getAllowConversionToBitmap$annotations(Lcoil3/request/ImageRequest;)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Kept for binary compatibility."
    .end annotation

    .line 2
    return-void
.end method

.method public static synthetic getAllowConversionToBitmap$annotations(Lcoil3/request/Options;)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Kept for binary compatibility."
    .end annotation

    .line 3
    return-void
.end method

.method public static final getAllowHardware(Lcoil3/Extras$Key$Companion;)Lcoil3/Extras$Key;
    .locals 0
    .param p0    # Lcoil3/Extras$Key$Companion;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil3/Extras$Key$Companion;",
            ")",
            "Lcoil3/Extras$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    sget-object p0, Lcoil3/request/ImageRequests_androidKt;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤:Lcoil3/Extras$Key;

    return-object p0
.end method

.method public static final getAllowHardware(Lcoil3/request/ImageRequest;)Z
    .locals 1
    .param p0    # Lcoil3/request/ImageRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcoil3/request/ImageRequests_androidKt;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤:Lcoil3/Extras$Key;

    invoke-static {p0, v0}, Lcoil3/ExtrasKt;->getExtra(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final getAllowHardware(Lcoil3/request/Options;)Z
    .locals 1
    .param p0    # Lcoil3/request/Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 2
    sget-object v0, Lcoil3/request/ImageRequests_androidKt;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤:Lcoil3/Extras$Key;

    invoke-static {p0, v0}, Lcoil3/ExtrasKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final getAllowRgb565(Lcoil3/Extras$Key$Companion;)Lcoil3/Extras$Key;
    .locals 0
    .param p0    # Lcoil3/Extras$Key$Companion;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil3/Extras$Key$Companion;",
            ")",
            "Lcoil3/Extras$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    sget-object p0, Lcoil3/request/ImageRequests_androidKt;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋:Lcoil3/Extras$Key;

    return-object p0
.end method

.method public static final getAllowRgb565(Lcoil3/request/ImageRequest;)Z
    .locals 1
    .param p0    # Lcoil3/request/ImageRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcoil3/request/ImageRequests_androidKt;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋:Lcoil3/Extras$Key;

    invoke-static {p0, v0}, Lcoil3/ExtrasKt;->getExtra(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final getAllowRgb565(Lcoil3/request/Options;)Z
    .locals 1
    .param p0    # Lcoil3/request/Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 2
    sget-object v0, Lcoil3/request/ImageRequests_androidKt;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋:Lcoil3/Extras$Key;

    invoke-static {p0, v0}, Lcoil3/ExtrasKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final getBitmapConfig(Lcoil3/request/ImageRequest;)Landroid/graphics/Bitmap$Config;
    .locals 1
    .param p0    # Lcoil3/request/ImageRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcoil3/request/ImageRequests_androidKt;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lcoil3/Extras$Key;

    invoke-static {p0, v0}, Lcoil3/ExtrasKt;->getExtra(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method public static final getBitmapConfig(Lcoil3/request/Options;)Landroid/graphics/Bitmap$Config;
    .locals 1
    .param p0    # Lcoil3/request/Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    sget-object v0, Lcoil3/request/ImageRequests_androidKt;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lcoil3/Extras$Key;

    invoke-static {p0, v0}, Lcoil3/ExtrasKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method public static final getBitmapConfig(Lcoil3/Extras$Key$Companion;)Lcoil3/Extras$Key;
    .locals 0
    .param p0    # Lcoil3/Extras$Key$Companion;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil3/Extras$Key$Companion;",
            ")",
            "Lcoil3/Extras$Key<",
            "Landroid/graphics/Bitmap$Config;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    sget-object p0, Lcoil3/request/ImageRequests_androidKt;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lcoil3/Extras$Key;

    return-object p0
.end method

.method public static final getColorSpace(Lcoil3/request/ImageRequest;)Landroid/graphics/ColorSpace;
    .locals 1
    .param p0    # Lcoil3/request/ImageRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcoil3/request/ImageRequests_androidKt;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Lcoil3/Extras$Key;

    invoke-static {p0, v0}, Lcoil3/ExtrasKt;->getExtra(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, L듬땥둡뎰뒻돵딽땥드땨뒉딌뒙듟돤돳돰뒉땧되땳땬땰딄돰땔뒨둥듽뎰뎡딠땹두땡둬뎠딃돶둡돨땩땹둥딝돳뎹돤땟땝듻딹됨둬둡들땮돳땵듨딟땔도뒤뎰듌뒷된땪도땀듸둔될됫땩땔뎠될듨딜땡땻땬둣뒐딄돳드땤땔듐돵돼될딀땤딻뎠땩득둔딐뎰딅땵뒤뎻든딟듔땫듟뎻돰됨뒘딌땵뒛땀딞딜땤듔둠뒋둥땦뒻;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두(Ljava/lang/Object;)Landroid/graphics/ColorSpace;

    move-result-object p0

    return-object p0
.end method

.method public static final getColorSpace(Lcoil3/request/Options;)Landroid/graphics/ColorSpace;
    .locals 1
    .param p0    # Lcoil3/request/Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    sget-object v0, Lcoil3/request/ImageRequests_androidKt;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Lcoil3/Extras$Key;

    invoke-static {p0, v0}, Lcoil3/ExtrasKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, L듬땥둡뎰뒻돵딽땥드땨뒉딌뒙듟돤돳돰뒉땧되땳땬땰딄돰땔뒨둥듽뎰뎡딠땹두땡둬뎠딃돶둡돨땩땹둥딝돳뎹돤땟땝듻딹됨둬둡들땮돳땵듨딟땔도뒤뎰듌뒷된땪도땀듸둔될됫땩땔뎠될듨딜땡땻땬둣뒐딄돳드땤땔듐돵돼될딀땤딻뎠땩득둔딐뎰딅땵뒤뎻든딟듔땫듟뎻돰됨뒘딌땵뒛땀딞딜땤듔둠뒋둥땦뒻;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두(Ljava/lang/Object;)Landroid/graphics/ColorSpace;

    move-result-object p0

    return-object p0
.end method

.method public static final getColorSpace(Lcoil3/Extras$Key$Companion;)Lcoil3/Extras$Key;
    .locals 0
    .param p0    # Lcoil3/Extras$Key$Companion;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil3/Extras$Key$Companion;",
            ")",
            "Lcoil3/Extras$Key<",
            "Landroid/graphics/ColorSpace;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    sget-object p0, Lcoil3/request/ImageRequests_androidKt;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Lcoil3/Extras$Key;

    return-object p0
.end method

.method public static final getCrossfadeMillis(Lcoil3/request/ImageRequest;)I
    .locals 1
    .param p0    # Lcoil3/request/ImageRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcoil3/request/ImageRequests_androidKt;->getTransitionFactory(Lcoil3/request/ImageRequest;)Lcoil3/transition/Transition$Factory;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    instance-of v0, p0, Lcoil3/transition/CrossfadeTransition$Factory;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p0, Lcoil3/transition/CrossfadeTransition$Factory;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    if-eqz p0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lcoil3/transition/CrossfadeTransition$Factory;->getDurationMillis()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    const/4 p0, 0x0

    .line 21
    :goto_1
    return p0
.end method

.method public static final getLifecycle(Lcoil3/request/ImageRequest;)Landroidx/lifecycle/Lifecycle;
    .locals 1
    .param p0    # Lcoil3/request/ImageRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcoil3/request/ImageRequests_androidKt;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:Lcoil3/Extras$Key;

    invoke-static {p0, v0}, Lcoil3/ExtrasKt;->getExtra(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/Lifecycle;

    return-object p0
.end method

.method public static final getLifecycle(Lcoil3/request/Options;)Landroidx/lifecycle/Lifecycle;
    .locals 1
    .param p0    # Lcoil3/request/Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    sget-object v0, Lcoil3/request/ImageRequests_androidKt;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:Lcoil3/Extras$Key;

    invoke-static {p0, v0}, Lcoil3/ExtrasKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/Lifecycle;

    return-object p0
.end method

.method public static final getLifecycle(Lcoil3/Extras$Key$Companion;)Lcoil3/Extras$Key;
    .locals 0
    .param p0    # Lcoil3/Extras$Key$Companion;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil3/Extras$Key$Companion;",
            ")",
            "Lcoil3/Extras$Key<",
            "Landroidx/lifecycle/Lifecycle;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    sget-object p0, Lcoil3/request/ImageRequests_androidKt;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:Lcoil3/Extras$Key;

    return-object p0
.end method

.method public static final getPremultipliedAlpha(Lcoil3/Extras$Key$Companion;)Lcoil3/Extras$Key;
    .locals 0
    .param p0    # Lcoil3/Extras$Key$Companion;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil3/Extras$Key$Companion;",
            ")",
            "Lcoil3/Extras$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    sget-object p0, Lcoil3/request/ImageRequests_androidKt;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:Lcoil3/Extras$Key;

    return-object p0
.end method

.method public static final getPremultipliedAlpha(Lcoil3/request/ImageRequest;)Z
    .locals 1
    .param p0    # Lcoil3/request/ImageRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcoil3/request/ImageRequests_androidKt;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:Lcoil3/Extras$Key;

    invoke-static {p0, v0}, Lcoil3/ExtrasKt;->getExtra(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final getPremultipliedAlpha(Lcoil3/request/Options;)Z
    .locals 1
    .param p0    # Lcoil3/request/Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 2
    sget-object v0, Lcoil3/request/ImageRequests_androidKt;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:Lcoil3/Extras$Key;

    invoke-static {p0, v0}, Lcoil3/ExtrasKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final synthetic getTransformations(Lcoil3/Extras$Key$Companion;)Lcoil3/Extras$Key;
    .locals 0

    .line 3
    invoke-static {p0}, Lcoil3/request/ImageRequestsKt;->getTransformations(Lcoil3/Extras$Key$Companion;)Lcoil3/Extras$Key;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic getTransformations(Lcoil3/request/ImageRequest;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0}, Lcoil3/request/ImageRequestsKt;->getTransformations(Lcoil3/request/ImageRequest;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic getTransformations(Lcoil3/request/Options;)Ljava/util/List;
    .locals 0

    .line 2
    invoke-static {p0}, Lcoil3/request/ImageRequestsKt;->getTransformations(Lcoil3/request/Options;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getTransformations$annotations(Lcoil3/Extras$Key$Companion;)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Kept for binary compatibility."
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getTransformations$annotations(Lcoil3/request/ImageRequest;)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Kept for binary compatibility."
    .end annotation

    .line 2
    return-void
.end method

.method public static synthetic getTransformations$annotations(Lcoil3/request/Options;)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Kept for binary compatibility."
    .end annotation

    .line 3
    return-void
.end method

.method public static final getTransitionFactory(Lcoil3/Extras$Key$Companion;)Lcoil3/Extras$Key;
    .locals 0
    .param p0    # Lcoil3/Extras$Key$Companion;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil3/Extras$Key$Companion;",
            ")",
            "Lcoil3/Extras$Key<",
            "Lcoil3/transition/Transition$Factory;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    sget-object p0, Lcoil3/request/ImageRequests_androidKt;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lcoil3/Extras$Key;

    return-object p0
.end method

.method public static final getTransitionFactory(Lcoil3/request/ImageRequest;)Lcoil3/transition/Transition$Factory;
    .locals 1
    .param p0    # Lcoil3/request/ImageRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcoil3/request/ImageRequests_androidKt;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lcoil3/Extras$Key;

    invoke-static {p0, v0}, Lcoil3/ExtrasKt;->getExtra(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcoil3/transition/Transition$Factory;

    return-object p0
.end method

.method public static final lifecycle(Lcoil3/request/ImageRequest$Builder;Landroidx/lifecycle/Lifecycle;)Lcoil3/request/ImageRequest$Builder;
    .locals 2
    .param p0    # Lcoil3/request/ImageRequest$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/lifecycle/Lifecycle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcoil3/request/ImageRequest$Builder;->getExtras()Lcoil3/Extras$Builder;

    move-result-object v0

    sget-object v1, Lcoil3/request/ImageRequests_androidKt;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:Lcoil3/Extras$Key;

    invoke-virtual {v0, v1, p1}, Lcoil3/Extras$Builder;->set(Lcoil3/Extras$Key;Ljava/lang/Object;)Lcoil3/Extras$Builder;

    return-object p0
.end method

.method public static final lifecycle(Lcoil3/request/ImageRequest$Builder;Landroidx/lifecycle/LifecycleOwner;)Lcoil3/request/ImageRequest$Builder;
    .locals 0
    .param p0    # Lcoil3/request/ImageRequest$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1}, Lcoil3/request/ImageRequests_androidKt;->lifecycle(Lcoil3/request/ImageRequest$Builder;Landroidx/lifecycle/Lifecycle;)Lcoil3/request/ImageRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static final placeholder(Lcoil3/request/ImageRequest$Builder;I)Lcoil3/request/ImageRequest$Builder;
    .locals 2
    .param p0    # Lcoil3/request/ImageRequest$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, L됴디뒙듽뎨땨돠땬듔땱뒉뒋둔딄땠딻딸듰땠땐딄뒛딄돰뒉땅딝땭딁돤듻뒐땝뒾듔듰땮뒀딜둡땐딌땫디땸뎬뎻땧드됫돷돶딐돳뒘뎸땩땭땳땯땟듔듔땬땍뒼돴땐땄땪됩돴돛둬도딸땰뒝땍둡땨듻땤땪뎸땹듰뒨땰딹듌땐듽됴됴돨됐둑듐뎬돼둔되땰땹뎸됩땍땥뒬뎨듟뒐딸듰딃딨뎡땱땳뒾드땐딁뒉땵땃됫뎽득;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, L됴디뒙듽뎨땨돠땬듔땱뒉뒋둔딄땠딻딸듰땠땐딄뒛딄돰뒉땅딝땭딁돤듻뒐땝뒾듔듰땮뒀딜둡땐딌땫디땸뎬뎻땧드됫돷돶딐돳뒘뎸땩땭땳땯땟듔듔땬땍뒼돴땐땄땪됩돴돛둬도딸땰뒝땍둡땨듻땤땪뎸땹듰뒨땰딹듌땐듽됴됴돨됐둑듐뎬돼둔되땰땹뎸됩땍땥뒬뎨듟뒐딸듰딃딨뎡땱땳뒾드땐딁뒉땵땃됫뎽득;-><init>(II)V

    invoke-virtual {p0, v0}, Lcoil3/request/ImageRequest$Builder;->placeholder(Lkotlin/jvm/functions/Function1;)Lcoil3/request/ImageRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static final placeholder(Lcoil3/request/ImageRequest$Builder;Landroid/graphics/drawable/Drawable;)Lcoil3/request/ImageRequest$Builder;
    .locals 0
    .param p0    # Lcoil3/request/ImageRequest$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Lcoil3/Image_androidKt;->asImage(Landroid/graphics/drawable/Drawable;)Lcoil3/Image;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcoil3/request/ImageRequest$Builder;->placeholder(Lcoil3/Image;)Lcoil3/request/ImageRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static final premultipliedAlpha(Lcoil3/ImageLoader$Builder;Z)Lcoil3/ImageLoader$Builder;
    .locals 2
    .param p0    # Lcoil3/ImageLoader$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcoil3/ImageLoader$Builder;->getExtras()Lcoil3/Extras$Builder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sget-object v1, Lcoil3/request/ImageRequests_androidKt;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:Lcoil3/Extras$Key;

    invoke-virtual {v0, v1, p1}, Lcoil3/Extras$Builder;->set(Lcoil3/Extras$Key;Ljava/lang/Object;)Lcoil3/Extras$Builder;

    return-object p0
.end method

.method public static final premultipliedAlpha(Lcoil3/request/ImageRequest$Builder;Z)Lcoil3/request/ImageRequest$Builder;
    .locals 2
    .param p0    # Lcoil3/request/ImageRequest$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcoil3/request/ImageRequest$Builder;->getExtras()Lcoil3/Extras$Builder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sget-object v1, Lcoil3/request/ImageRequests_androidKt;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:Lcoil3/Extras$Key;

    invoke-virtual {v0, v1, p1}, Lcoil3/Extras$Builder;->set(Lcoil3/Extras$Key;Ljava/lang/Object;)Lcoil3/Extras$Builder;

    return-object p0
.end method

.method public static final target(Lcoil3/request/ImageRequest$Builder;Landroid/widget/ImageView;)Lcoil3/request/ImageRequest$Builder;
    .locals 1
    .param p0    # Lcoil3/request/ImageRequest$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcoil3/target/ImageViewTarget;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcoil3/target/ImageViewTarget;-><init>(Landroid/widget/ImageView;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcoil3/request/ImageRequest$Builder;->target(Lcoil3/target/Target;)Lcoil3/request/ImageRequest$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final synthetic transformations(Lcoil3/request/ImageRequest$Builder;Ljava/util/List;)Lcoil3/request/ImageRequest$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Kept for binary compatibility."
    .end annotation

    .line 2
    invoke-static {p0, p1}, Lcoil3/request/ImageRequestsKt;->transformations(Lcoil3/request/ImageRequest$Builder;Ljava/util/List;)Lcoil3/request/ImageRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs synthetic transformations(Lcoil3/request/ImageRequest$Builder;[Lcoil3/transform/Transformation;)Lcoil3/request/ImageRequest$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Kept for binary compatibility."
    .end annotation

    .line 1
    invoke-static {p1}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lcoil3/request/ImageRequestsKt;->transformations(Lcoil3/request/ImageRequest$Builder;Ljava/util/List;)Lcoil3/request/ImageRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static final transitionFactory(Lcoil3/ImageLoader$Builder;Lcoil3/transition/Transition$Factory;)Lcoil3/ImageLoader$Builder;
    .locals 2
    .param p0    # Lcoil3/ImageLoader$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcoil3/transition/Transition$Factory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcoil3/ImageLoader$Builder;->getExtras()Lcoil3/Extras$Builder;

    move-result-object v0

    sget-object v1, Lcoil3/request/ImageRequests_androidKt;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lcoil3/Extras$Key;

    invoke-virtual {v0, v1, p1}, Lcoil3/Extras$Builder;->set(Lcoil3/Extras$Key;Ljava/lang/Object;)Lcoil3/Extras$Builder;

    return-object p0
.end method

.method public static final transitionFactory(Lcoil3/request/ImageRequest$Builder;Lcoil3/transition/Transition$Factory;)Lcoil3/request/ImageRequest$Builder;
    .locals 2
    .param p0    # Lcoil3/request/ImageRequest$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcoil3/transition/Transition$Factory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcoil3/request/ImageRequest$Builder;->getExtras()Lcoil3/Extras$Builder;

    move-result-object v0

    sget-object v1, Lcoil3/request/ImageRequests_androidKt;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lcoil3/Extras$Key;

    invoke-virtual {v0, v1, p1}, Lcoil3/Extras$Builder;->set(Lcoil3/Extras$Key;Ljava/lang/Object;)Lcoil3/Extras$Builder;

    return-object p0
.end method
