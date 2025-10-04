.class public final Lcoil3/ComponentRegistry$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil3/ComponentRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0008\u0012\u0018\u00002\u00020\u0001B\t\u0008\u0016\u00a2\u0006\u0004\u0008\u0002\u0010\u0003B\u0011\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0006J\u0015\u0010\t\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ.\u0010\t\u001a\u00020\u0000\"\n\u0008\u0000\u0010\u000b\u0018\u0001*\u00020\u00012\u0010\u0010\r\u001a\u000c\u0012\u0004\u0012\u00028\u0000\u0012\u0002\u0008\u00030\u000cH\u0086\u0008\u00a2\u0006\u0004\u0008\t\u0010\u000eJ7\u0010\t\u001a\u00020\u0000\"\u0008\u0008\u0000\u0010\u000b*\u00020\u00012\u0010\u0010\r\u001a\u000c\u0012\u0004\u0012\u00028\u0000\u0012\u0002\u0008\u00030\u000c2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000f\u00a2\u0006\u0004\u0008\t\u0010\u0011J*\u0010\t\u001a\u00020\u0000\"\n\u0008\u0000\u0010\u000b\u0018\u0001*\u00020\u00012\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0012H\u0086\u0008\u00a2\u0006\u0004\u0008\t\u0010\u0014J3\u0010\t\u001a\u00020\u0000\"\u0008\u0008\u0000\u0010\u000b*\u00020\u00012\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00122\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000f\u00a2\u0006\u0004\u0008\t\u0010\u0015J*\u0010\t\u001a\u00020\u0000\"\n\u0008\u0000\u0010\u000b\u0018\u0001*\u00020\u00012\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0016H\u0086\u0008\u00a2\u0006\u0004\u0008\t\u0010\u0018J3\u0010\t\u001a\u00020\u0000\"\u0008\u0008\u0000\u0010\u000b*\u00020\u00012\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00162\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000f\u00a2\u0006\u0004\u0008\t\u0010\u0019J=\u0010\u001d\u001a\u00020\u00002.\u0010\u0017\u001a*\u0012&\u0012$\u0012 \u0012\u001e\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\u0016\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\u000f0\u001c0\u001b0\u001a\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0015\u0010\t\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u001f\u00a2\u0006\u0004\u0008\t\u0010 J!\u0010!\u001a\u00020\u00002\u0012\u0010\u0017\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001f0\u001b0\u001a\u00a2\u0006\u0004\u0008!\u0010\u001eJ\r\u0010\"\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\"\u0010#R \u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u00070$8\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008%\u0010&\u001a\u0004\u0008\'\u0010(R@\u0010,\u001a(\u0012$\u0012\"\u0012\u0010\u0012\u000e\u0012\u0006\u0008\u0001\u0012\u00020\u0001\u0012\u0002\u0008\u00030\u000c\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\u000f0\u001c0$8\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008*\u0010&\u001a\u0004\u0008+\u0010(R<\u0010/\u001a$\u0012 \u0012\u001e\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\u0012\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\u000f0\u001c0$8\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008-\u0010&\u001a\u0004\u0008.\u0010(RH\u00102\u001a0\u0012,\u0012*\u0012&\u0012$\u0012 \u0012\u001e\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\u0016\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\u000f0\u001c0\u001b0\u001a0$8\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u00080\u0010&\u001a\u0004\u00081\u0010(R,\u00105\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001f0\u001b0\u001a0$8\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u00083\u0010&\u001a\u0004\u00084\u0010(\u00a8\u00066"
    }
    d2 = {
        "Lcoil3/ComponentRegistry$Builder;",
        "",
        "<init>",
        "()V",
        "Lcoil3/ComponentRegistry;",
        "registry",
        "(Lcoil3/ComponentRegistry;)V",
        "Lcoil3/intercept/Interceptor;",
        "interceptor",
        "add",
        "(Lcoil3/intercept/Interceptor;)Lcoil3/ComponentRegistry$Builder;",
        "T",
        "Lcoil3/map/Mapper;",
        "mapper",
        "(Lcoil3/map/Mapper;)Lcoil3/ComponentRegistry$Builder;",
        "Lkotlin/reflect/KClass;",
        "type",
        "(Lcoil3/map/Mapper;Lkotlin/reflect/KClass;)Lcoil3/ComponentRegistry$Builder;",
        "Lcoil3/key/Keyer;",
        "keyer",
        "(Lcoil3/key/Keyer;)Lcoil3/ComponentRegistry$Builder;",
        "(Lcoil3/key/Keyer;Lkotlin/reflect/KClass;)Lcoil3/ComponentRegistry$Builder;",
        "Lcoil3/fetch/Fetcher$Factory;",
        "factory",
        "(Lcoil3/fetch/Fetcher$Factory;)Lcoil3/ComponentRegistry$Builder;",
        "(Lcoil3/fetch/Fetcher$Factory;Lkotlin/reflect/KClass;)Lcoil3/ComponentRegistry$Builder;",
        "Lkotlin/Function0;",
        "",
        "Lkotlin/Pair;",
        "addFetcherFactories",
        "(Lkotlin/jvm/functions/Function0;)Lcoil3/ComponentRegistry$Builder;",
        "Lcoil3/decode/Decoder$Factory;",
        "(Lcoil3/decode/Decoder$Factory;)Lcoil3/ComponentRegistry$Builder;",
        "addDecoderFactories",
        "build",
        "()Lcoil3/ComponentRegistry;",
        "",
        "\ub3a0\ub460\ub56a\ub4fc\ub3a0\ub505\ub572\ub454\ub4fd\ub42b\ub51e\ub3f0\ub461\ub51e\ub4fc\ub3a8\ub3a8\ub4d4\ub561\ub51d\ub568\ub543\ub540\ub4bb\ub524\ub539\ub3dd\ub418\ub573\ub572\ub538\ub4be\ub3a8\ub571\ub565\ub3f6\ub49b\ub4b7\ub4e4\ub4a8\ub54b\ub3e0\ub3a1\ub454\ub41c\ub3e4\ub4e0\ub42b\ub539\ub3f3\ub3f4\ub3db\ub54d\ub578\ub4b5\ub451\ub3f3\ub568\ub55d\ub4dd\ub56e\ub560\ub568\ub500\ub504\ub4a8\ub480\ub540\ub54b\ub4fd\ub42b\ub539\ub575\ub528\ub4b5\ub4f8\ub575\ub3ac\ub4bb\ub3e4\ub568\ub450\ub4f0\ub56b\ub57b\ub48b\ub3f6\ub450\ub563\ub3a1\ub3a1\ub4d0\ub56b\ub570\ub489\ub3b9\ub569\ub571\ub451\ub504\ub3f3\ub4f8\ub4a4\ub3bb\ub56e\ub51c\ub57b\ub428\ub3b8\ub4bc\ub503\ub42b\ub3f8\ub56e\ub56e\ub3e8\ub4a8\ub561\ub572\ub528\ub3f7\ub418\ub54b\ub458\ub3e0\ub56a\ub4b7\ub499\ub545\ub3b8",
        "Ljava/util/List;",
        "getInterceptors$coil_core_release",
        "()Ljava/util/List;",
        "interceptors",
        "\ub3a0\ub50e\ub503\ub4fc\ub489\ub428\ub3b9\ub568\ub4fb\ub540\ub51d\ub566\ub4ac\ub3f0\ub3f7\ub569\ub4dd\ub51e\ub4e0\ub463\ub4fc\ub3f8\ub410\ub543\ub460\ub51c\ub538\ub4b5\ub4e4\ub3f4\ub4f0\ub543\ub4dd\ub54b\ub3a0\ub3f8\ub524\ub540\ub51d\ub3b9\ub528\ub450\ub568\ub4b7\ub50e\ub50e\ub510\ub480\ub3ac\ub4f0\ub51c\ub56d\ub4d4\ub4e8\ub3f4\ub4fc\ub465\ub4dd\ub3b9\ub3f6\ub4e4\ub4dc\ub3bb\ub501\ub458\ub410\ub3e8\ub460\ub488\ub545\ub3e8\ub55c\ub51d\ub4e4\ub500\ub451\ub4b9\ub3b9\ub450\ub56c\ub4d0\ub3f6\ub4ec\ub56c\ub3c4\ub3b8\ub460\ub460\ub4a8\ub410\ub55d\ub50e\ub500\ub578\ub56a\ub4dd\ub4b5\ub56c\ub490\ub570\ub55d\ub4b5\ub572\ub4ec\ub4fd\ub3f5\ub480\ub54b\ub4ac\ub573\ub48b\ub4f0\ub55f\ub3f0\ub418\ub54b\ub454\ub571\ub4d4\ub540\ub563\ub418\ub498\ub3fc\ub4bb\ub501\ub465\ub498\ub41c\ub56b",
        "getMappers$coil_core_release",
        "mappers",
        "\ub3a0\ub544\ub490\ub3f8\ub4cc\ub3db\ub490\ub480\ub4f8\ub510\ub503\ub541\ub4d4\ub3a1\ub4cc\ub500\ub46c\ub480\ub418\ub573\ub573\ub4a4\ub4bc\ub460\ub56e\ub544\ub564\ub450\ub54d\ub3bb\ub567\ub53b\ub3c4\ub4fc\ub4ac\ub561\ub480\ub4fb\ub520\ub3f7\ub3b8\ub451\ub3f5\ub46c\ub539\ub550\ub42b\ub545\ub3a1\ub51f\ub420\ub56f\ub554\ub54b\ub51f\ub573\ub503\ub3f3\ub49d\ub514\ub4a8\ub4df\ub3f6\ub51c\ub573\ub51f\ub544\ub480\ub3dd\ub56e\ub3c4\ub3c4\ub504\ub56f\ub4f0\ub56e\ub3a1\ub3a1\ub4df\ub4fb\ub544\ub480\ub4bb\ub56d\ub451\ub4e8\ub4e4\ub4e4\ub578\ub4df\ub418\ub46c\ub49d\ub3f0\ub4d4\ub429\ub528\ub4cc\ub51c\ub4fb\ub3dd\ub4dc\ub4be\ub451\ub3a1\ub4f0\ub545\ub503\ub524\ub545\ub4a8\ub488\ub4b9\ub420\ub4f8\ub3f5\ub458\ub490\ub56d\ub541\ub4f8\ub56e\ub489\ub56a\ub51f\ub4e0\ub57b\ub571\ub4fb\ub489",
        "getKeyers$coil_core_release",
        "keyers",
        "\ub3a0\ub57b\ub55d\ub3b9\ub53d\ub450\ub53d\ub460\ub545\ub56b\ub575\ub488\ub4be\ub54d\ub4a4\ub418\ub4b5\ub460\ub56f\ub42b\ub461\ub541\ub3c4\ub3b9\ub3a0\ub566\ub3bd\ub4fd\ub49b\ub544\ub564\ub503\ub3f6\ub569\ub51d\ub50e\ub4f8\ub505\ub3ac\ub451\ub540\ub55d\ub53b\ub450\ub498\ub49b\ub3f5\ub54b\ub4fc\ub458\ub4fc\ub544\ub504\ub3db\ub50e\ub504\ub3f4\ub510\ub490\ub51d\ub3e0\ub3b0\ub543\ub498\ub3f8\ub528\ub55f\ub510\ub428\ub4ac\ub454\ub56c\ub530\ub579\ub3b9\ub3bd\ub53d\ub3fc\ub524\ub560\ub563\ub4a4\ub434\ub428\ub4e0\ub575\ub57b\ub480\ub49d\ub3f0\ub3f8\ub4ec\ub56e\ub3a0\ub480\ub3f7\ub3f5\ub54d\ub4d0\ub514\ub4d0\ub4fb\ub569\ub4dd\ub4fb\ub3f4\ub51c\ub54b\ub49b\ub578\ub3f8\ub501\ub501\ub55c\ub570\ub568\ub56b\ub4bc\ub554\ub4bc\ub46c\ub434\ub578\ub48b\ub46c\ub565\ub520\ub4be\ub56a\ub428",
        "getLazyFetcherFactories$coil_core_release",
        "lazyFetcherFactories",
        "\ub3a1\ub514\ub3f3\ub4ec\ub501\ub42b\ub565\ub4be\ub565\ub50c\ub528\ub530\ub54d\ub49b\ub550\ub4e0\ub51c\ub48b\ub3f5\ub3f7\ub579\ub498\ub566\ub410\ub554\ub504\ub458\ub56f\ub567\ub450\ub554\ub56d\ub41c\ub3f5\ub4be\ub4b9\ub55f\ub520\ub56a\ub4b9\ub3c4\ub490\ub3e4\ub3f5\ub4cc\ub566\ub460\ub3f5\ub3f4\ub56b\ub465\ub4d4\ub4fb\ub504\ub53d\ub3a0\ub3b8\ub540\ub571\ub4dd\ub56f\ub3b0\ub450\ub4b9\ub514\ub545\ub4e4\ub480\ub499\ub53d\ub3a1\ub42b\ub51e\ub4bb\ub4df\ub520\ub4be\ub49b\ub51f\ub4ec\ub4dd\ub56c\ub50c\ub3e8\ub573\ub4bc\ub505\ub4b7\ub4f0\ub4fd\ub3f6\ub450\ub3a8\ub3f0\ub3ac\ub3e8\ub51e\ub490\ub4b9\ub503\ub4dc\ub501\ub4cc\ub56b\ub49d\ub579\ub567\ub429\ub55c\ub53b\ub428\ub561\ub4dc\ub510\ub528\ub3e4\ub50c\ub568\ub488\ub4bc\ub530\ub53d\ub4b9\ub3b0\ub510\ub4b7\ub49d\ub51f\ub572\ub4a8",
        "getLazyDecoderFactories$coil_core_release",
        "lazyDecoderFactories",
        "coil-core_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nComponentRegistry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ComponentRegistry.kt\ncoil3/ComponentRegistry$Builder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,198:1\n1628#2,3:199\n1628#2,3:202\n*S KotlinDebug\n*F\n+ 1 ComponentRegistry.kt\ncoil3/ComponentRegistry$Builder\n*L\n139#1:199,3\n140#1:202,3\n*E\n"
    }
.end annotation


# instance fields
.field public final 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Ljava/util/List;

.field public final 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Ljava/util/List;

.field public final 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Ljava/util/List;

.field public final 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:Ljava/util/ArrayList;

.field public final 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcoil3/ComponentRegistry$Builder;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcoil3/ComponentRegistry$Builder;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcoil3/ComponentRegistry$Builder;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcoil3/ComponentRegistry$Builder;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:Ljava/util/ArrayList;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcoil3/ComponentRegistry$Builder;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcoil3/ComponentRegistry;)V
    .locals 5
    .param p1    # Lcoil3/ComponentRegistry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p1}, Lcoil3/ComponentRegistry;->getInterceptors()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcoil3/ComponentRegistry$Builder;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Ljava/util/List;

    .line 9
    invoke-virtual {p1}, Lcoil3/ComponentRegistry;->getMappers()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcoil3/ComponentRegistry$Builder;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Ljava/util/List;

    .line 10
    invoke-virtual {p1}, Lcoil3/ComponentRegistry;->getKeyers()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcoil3/ComponentRegistry$Builder;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Ljava/util/List;

    .line 11
    invoke-virtual {p1}, Lcoil3/ComponentRegistry;->getFetcherFactories()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 13
    check-cast v2, Lkotlin/Pair;

    .line 14
    new-instance v3, L둡둣뎹둣딤땠땯딌땳딐둣디돳듌듨돶듰뒻땤듬둡딜딟땍딻뒐둘둣돳두되뎻땧듼딻듐득둥뎻뒾돸땣뒾땦땟돵디됐뎠땋둬뒉땪땸들득두땰돸땝둬돷딄듨땝땳됫뎨도뒝뒝듬땀딅뒾듰둣둠돸뎠땱딄땳도따땫디딸뎠땋땰딁뎠뒷뒝땯뒵둬됩뎽딝뒛뒋딄둣땯땲듸듬땵딁땠두든돶땨도듬딤땟뒈땣땯드돷둬돸되듻뎰;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, L둡둣뎹둣딤땠땯딌땳딐둣디돳듌듨돶듰뒻땤듬둡딜딟땍딻뒐둘둣돳두되뎻땧듼딻듐득둥뎻뒾돸땣뒾땦땟돵디됐뎠땋둬뒉땪땸들득두땰돸땝둬돷딄듨땝땳됫뎨도뒝뒝듬땀딅뒾듰둣둠돸뎠땱딄땳도따땫디딸뎠땋땰딁뎠뒷뒝땯뒵둬됩뎽딝뒛뒋딄둣땯땲듸듬땵딁땠두든돶땨도듬딤땟뒈땣땯드돷둬돸되듻뎰;-><init>(Lkotlin/Pair;I)V

    .line 15
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_0
    iput-object v1, p0, Lcoil3/ComponentRegistry$Builder;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {p1}, Lcoil3/ComponentRegistry;->getDecoderFactories()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 19
    check-cast v1, Lcoil3/decode/Decoder$Factory;

    .line 20
    new-instance v2, L둡딜땟될딠뒉땁돝듰듽됩뒙딟땤들돝듨땭땀듨둥뒨됫됴돨땧딠땐뒨돳땯되땰뒻땍돛돳뒛땪뒋뒹됩딄땀땪딄뎸뒉딤땬둔땩딄땡돴뒵뒝뎸딸뒹듽딹뒈둡딐둡땥둥딝딎땜딅둣뒤땹돛둥뒻둑딅딻둘돠뒬땭땨둠돛땃돸도뒘돴땅땁되딠딤돰듨딜땸둔딠둠듸땡땐돸딝땻땅딐딃딄돳딄둔득땭땰득듬듽듔뎸됴돸딝땝;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, L둡딜땟될딠뒉땁돝듰듽됩뒙딟땤들돝듨땭땀듨둥뒨됫됴돨땧딠땐뒨돳땯되땰뒻땍돛돳뒛땪뒋뒹됩딄땀땪딄뎸뒉딤땬둔땩딄땡돴뒵뒝뎸딸뒹듽딹뒈둡딐둡땥둥딝딎땜딅둣뒤땹돛둥뒻둑딅딻둘돠뒬땭땨둠돛땃돸도뒘돴땅땁되딠딤돰듨딜땸둔딠둠듸땡땐돸딝땻땅딐딃딄돳딄둔득땭땰득듬듽듔뎸됴돸딝땝;-><init>(Lcoil3/decode/Decoder$Factory;I)V

    .line 21
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 22
    :cond_1
    iput-object v0, p0, Lcoil3/ComponentRegistry$Builder;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final add(Lcoil3/decode/Decoder$Factory;)Lcoil3/ComponentRegistry$Builder;
    .locals 3
    .param p1    # Lcoil3/decode/Decoder$Factory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 8
    iget-object v0, p0, Lcoil3/ComponentRegistry$Builder;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:Ljava/util/ArrayList;

    new-instance v1, L둡딜땟될딠뒉땁돝듰듽됩뒙딟땤들돝듨땭땀듨둥뒨됫됴돨땧딠땐뒨돳땯되땰뒻땍돛돳뒛땪뒋뒹됩딄땀땪딄뎸뒉딤땬둔땩딄땡돴뒵뒝뎸딸뒹듽딹뒈둡딐둡땥둥딝딎땜딅둣뒤땹돛둥뒻둑딅딻둘돠뒬땭땨둠돛땃돸도뒘돴땅땁되딠딤돰듨딜땸둔딠둠듸땡땐돸딝땻땅딐딃딄돳딄둔득땭땰득듬듽듔뎸됴돸딝땝;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, L둡딜땟될딠뒉땁돝듰듽됩뒙딟땤들돝듨땭땀듨둥뒨됫됴돨땧딠땐뒨돳땯되땰뒻땍돛돳뒛땪뒋뒹됩딄땀땪딄뎸뒉딤땬둔땩딄땡돴뒵뒝뎸딸뒹듽딹뒈둡딐둡땥둥딝딎땜딅둣뒤땹돛둥뒻둑딅딻둘돠뒬땭땨둠돛땃돸도뒘돴땅땁되딠딤돰듨딜땸둔딠둠듸땡땐돸딝땻땅딐딃딄돳딄둔득땭땰득듬듽듔뎸됴돸딝땝;-><init>(Lcoil3/decode/Decoder$Factory;I)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final synthetic add(Lcoil3/fetch/Fetcher$Factory;)Lcoil3/ComponentRegistry$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcoil3/fetch/Fetcher$Factory<",
            "TT;>;)",
            "Lcoil3/ComponentRegistry$Builder;"
        }
    .end annotation

    const/4 v0, 0x4

    .line 6
    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcoil3/ComponentRegistry$Builder;->add(Lcoil3/fetch/Fetcher$Factory;Lkotlin/reflect/KClass;)Lcoil3/ComponentRegistry$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final add(Lcoil3/fetch/Fetcher$Factory;Lkotlin/reflect/KClass;)Lcoil3/ComponentRegistry$Builder;
    .locals 3
    .param p1    # Lcoil3/fetch/Fetcher$Factory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/reflect/KClass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcoil3/fetch/Fetcher$Factory<",
            "TT;>;",
            "Lkotlin/reflect/KClass<",
            "TT;>;)",
            "Lcoil3/ComponentRegistry$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 7
    iget-object v0, p0, Lcoil3/ComponentRegistry$Builder;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:Ljava/util/ArrayList;

    new-instance v1, L둡딸땳듟땮듟뒋돨돼듟듻돛땋듬돷딸땣뒉둡땃뎻듔딐뒬땭뒀득되뎨뒻땵땯둣듔뎠듽듬돷뒘돴딤둔땍땔땭딻땪듬땱돛땤땩땣딀땫땋땨뒾땍뒷땵딽드듌땔디돸됨뒬돵땤뒙둬둣땁뒼뒐돤듸뒐뒬뎰땠땵뎽땳딐돛딄듬뒐땬듨뒘듻두돳딜뒋듻뒻돳됫뎸둡둠딜딹듽뎽뎡땮딨땃뎹딄딃뒛뒷뒨돤땰땟딹뎬땹딟땦땱땀;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, L둡딸땳듟땮듟뒋돨돼듟듻돛땋듬돷딸땣뒉둡땃뎻듔딐뒬땭뒀득되뎨뒻땵땯둣듔뎠듽듬돷뒘돴딤둔땍땔땭딻땪듬땱돛땤땩땣딀땫땋땨뒾땍뒷땵딽드듌땔디돸됨뒬돵땤뒙둬둣땁뒼뒐돤듸뒐뒬뎰땠땵뎽땳딐돛딄듬뒐땬듨뒘듻두돳딜뒋듻뒻돳됫뎸둡둠딜딹듽뎽뎡땮딨땃뎹딄딃뒛뒷뒨돤땰땟딹뎬땹딟땦땱땀;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final add(Lcoil3/intercept/Interceptor;)Lcoil3/ComponentRegistry$Builder;
    .locals 1
    .param p1    # Lcoil3/intercept/Interceptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil3/ComponentRegistry$Builder;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final synthetic add(Lcoil3/key/Keyer;)Lcoil3/ComponentRegistry$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcoil3/key/Keyer<",
            "TT;>;)",
            "Lcoil3/ComponentRegistry$Builder;"
        }
    .end annotation

    const/4 v0, 0x4

    .line 4
    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcoil3/ComponentRegistry$Builder;->add(Lcoil3/key/Keyer;Lkotlin/reflect/KClass;)Lcoil3/ComponentRegistry$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final add(Lcoil3/key/Keyer;Lkotlin/reflect/KClass;)Lcoil3/ComponentRegistry$Builder;
    .locals 1
    .param p1    # Lcoil3/key/Keyer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/reflect/KClass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcoil3/key/Keyer<",
            "TT;>;",
            "Lkotlin/reflect/KClass<",
            "TT;>;)",
            "Lcoil3/ComponentRegistry$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 5
    iget-object v0, p0, Lcoil3/ComponentRegistry$Builder;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final synthetic add(Lcoil3/map/Mapper;)Lcoil3/ComponentRegistry$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcoil3/map/Mapper<",
            "TT;*>;)",
            "Lcoil3/ComponentRegistry$Builder;"
        }
    .end annotation

    const/4 v0, 0x4

    .line 2
    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcoil3/ComponentRegistry$Builder;->add(Lcoil3/map/Mapper;Lkotlin/reflect/KClass;)Lcoil3/ComponentRegistry$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final add(Lcoil3/map/Mapper;Lkotlin/reflect/KClass;)Lcoil3/ComponentRegistry$Builder;
    .locals 1
    .param p1    # Lcoil3/map/Mapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/reflect/KClass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcoil3/map/Mapper<",
            "TT;*>;",
            "Lkotlin/reflect/KClass<",
            "TT;>;)",
            "Lcoil3/ComponentRegistry$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    iget-object v0, p0, Lcoil3/ComponentRegistry$Builder;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addDecoderFactories(Lkotlin/jvm/functions/Function0;)Lcoil3/ComponentRegistry$Builder;
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcoil3/decode/Decoder$Factory;",
            ">;>;)",
            "Lcoil3/ComponentRegistry$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil3/ComponentRegistry$Builder;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final addFetcherFactories(Lkotlin/jvm/functions/Function0;)Lcoil3/ComponentRegistry$Builder;
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lkotlin/Pair<",
            "+",
            "Lcoil3/fetch/Fetcher$Factory<",
            "+",
            "Ljava/lang/Object;",
            ">;+",
            "Lkotlin/reflect/KClass<",
            "+",
            "Ljava/lang/Object;",
            ">;>;>;>;)",
            "Lcoil3/ComponentRegistry$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil3/ComponentRegistry$Builder;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final build()Lcoil3/ComponentRegistry;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v7, Lcoil3/ComponentRegistry;

    .line 2
    .line 3
    iget-object v0, p0, Lcoil3/ComponentRegistry$Builder;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Ljava/util/List;

    .line 4
    .line 5
    invoke-static {v0}, Lcoil3/util/Collections_jvmCommonKt;->toImmutableList(Ljava/util/List;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v0, p0, Lcoil3/ComponentRegistry$Builder;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Ljava/util/List;

    .line 10
    .line 11
    invoke-static {v0}, Lcoil3/util/Collections_jvmCommonKt;->toImmutableList(Ljava/util/List;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v0, p0, Lcoil3/ComponentRegistry$Builder;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Ljava/util/List;

    .line 16
    .line 17
    invoke-static {v0}, Lcoil3/util/Collections_jvmCommonKt;->toImmutableList(Ljava/util/List;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    iget-object v0, p0, Lcoil3/ComponentRegistry$Builder;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-static {v0}, Lcoil3/util/Collections_jvmCommonKt;->toImmutableList(Ljava/util/List;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    iget-object v0, p0, Lcoil3/ComponentRegistry$Builder;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-static {v0}, Lcoil3/util/Collections_jvmCommonKt;->toImmutableList(Ljava/util/List;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    const/4 v6, 0x0

    .line 34
    move-object v0, v7

    .line 35
    invoke-direct/range {v0 .. v6}, Lcoil3/ComponentRegistry;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 36
    .line 37
    .line 38
    return-object v7
.end method

.method public final getInterceptors$coil_core_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcoil3/intercept/Interceptor;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil3/ComponentRegistry$Builder;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getKeyers$coil_core_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lcoil3/key/Keyer<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/reflect/KClass<",
            "+",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil3/ComponentRegistry$Builder;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLazyDecoderFactories$coil_core_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/util/List<",
            "Lcoil3/decode/Decoder$Factory;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil3/ComponentRegistry$Builder;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLazyFetcherFactories$coil_core_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lcoil3/fetch/Fetcher$Factory<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/reflect/KClass<",
            "+",
            "Ljava/lang/Object;",
            ">;>;>;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil3/ComponentRegistry$Builder;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMappers$coil_core_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lcoil3/map/Mapper<",
            "+",
            "Ljava/lang/Object;",
            "*>;",
            "Lkotlin/reflect/KClass<",
            "+",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil3/ComponentRegistry$Builder;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method
