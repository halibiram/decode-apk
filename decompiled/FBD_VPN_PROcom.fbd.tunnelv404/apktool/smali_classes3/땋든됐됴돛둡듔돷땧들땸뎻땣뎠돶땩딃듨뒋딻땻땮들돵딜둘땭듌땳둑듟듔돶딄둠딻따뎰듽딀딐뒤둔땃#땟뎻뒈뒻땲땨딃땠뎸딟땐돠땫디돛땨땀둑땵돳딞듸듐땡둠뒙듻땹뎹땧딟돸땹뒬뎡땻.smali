.class public abstract synthetic L땋든됐됴돛둡듔돷땧들땸뎻땣뎠돶땩딃듨뒋딻땻땮들돵딜둘땭듌땳둑듟듔돶딄둠딻따뎰듽딀딐뒤둔땃둬땟딜돰둑땬땸땭돷딽돸딻땳따돝뒝돷들듸뒨뒵땔딄뒼뎠땠딎땀둠듻됴땥딄땀땨뎽땤땟땪땳돠따돶땰뒼땡딠될뒷듻땟뎻뒈뒻땲땨딃땠뎸딟땐돠땫디돛땨땀둑땵돳딞듸듐땡둠뒙듻땹뎹땧딟돸땹뒬뎡땻;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lokhttp3/internal/connection/RoutePlanner;Lokhttp3/internal/connection/RealConnection;ILjava/lang/Object;)Z
    .locals 0

    .line 1
    if-nez p3, :cond_1

    .line 2
    .line 3
    and-int/lit8 p2, p2, 0x1

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    :cond_0
    invoke-interface {p0, p1}, Lokhttp3/internal/connection/RoutePlanner;->hasNext(Lokhttp3/internal/connection/RealConnection;)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    const-string p1, "Super calls with default arguments not supported in this target, function: hasNext"

    .line 16
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method
