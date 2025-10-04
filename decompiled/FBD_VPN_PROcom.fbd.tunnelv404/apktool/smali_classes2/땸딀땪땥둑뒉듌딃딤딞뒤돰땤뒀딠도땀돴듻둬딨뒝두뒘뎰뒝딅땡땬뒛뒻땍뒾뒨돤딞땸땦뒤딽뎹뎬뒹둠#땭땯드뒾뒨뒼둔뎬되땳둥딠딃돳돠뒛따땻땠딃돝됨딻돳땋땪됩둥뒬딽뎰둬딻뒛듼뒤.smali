.class public abstract synthetic L땸딀땪땥둑뒉듌딃딤딞뒤돰땤뒀딠도땀돴듻둬딨뒝두뒘뎰뒝딅땡땬뒛뒻땍뒾뒨돤딞땸땦뒤딽뎹뎬뒹둠딅듬딄듽됴됐땵뒨된둘뎸땱딜땻듼든땹돶뒘땲뒨듐뒘딹돼땡딅땳뒾땁땝돠됴둡땧돼뎬뒨돤땱땣듻뎰땹딻디땻딹돸땃땭땯드뒾뒨뒼둔뎬되땳둥딠딃돳돠뒛따땻땠딃돝됨딻돳땋땪됩둥뒬딽뎰둬딻뒛듼뒤;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eq v0, p4, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return p0
.end method
