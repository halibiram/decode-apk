.class public final L땔뎽뒵뎹뒨뒷딅땻땹뎠뒤뒙듻뒛뒛땹딌돝뒙땃돠뎻땳땝됴딃딜뒋딁될땁뒹든딟둠듟뒵뎻뎽듐땐땹될두둔뒈땐둔땣뒼듰뒘뒈듔듻땲듽땔돠땫둣돨딸땸땃뒙됩뒹뒉듟뒙뒵땦될땡땄뒾됴된땜딎땝뒛땥뒷땩땋돸뎨둡땝땸딝도듽뎨땄듽듌땰땭듌땳뒉뒐뒝됫딤땥뎠둠둠딄뒼뎰딨듰뒾딁뒀뒈땮듽땀땬듻딨땟뒝돵;
.super Lkotlinx/coroutines/internal/Segment;
.source "SourceFile"


# instance fields
.field public final synthetic 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:Ljava/util/concurrent/atomic/AtomicReferenceArray;


# direct methods
.method public constructor <init>(JL땔뎽뒵뎹뒨뒷딅땻땹뎠뒤뒙듻뒛뒛땹딌돝뒙땃돠뎻땳땝됴딃딜뒋딁될땁뒹든딟둠듟뒵뎻뎽듐땐땹될두둔뒈땐둔땣뒼듰뒘뒈듔듻땲듽땔돠땫둣돨딸땸땃뒙됩뒹뒉듟뒙뒵땦될땡땄뒾됴된땜딎땝뒛땥뒷땩땋돸뎨둡땝땸딝도듽뎨땄듽듌땰땭듌땳뒉뒐뒝됫딤땥뎠둠둠딄뒼뎰딨듰뒾딁뒀뒈땮듽땀땬듻딨땟뒝돵;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lkotlinx/coroutines/internal/Segment;-><init>(JLkotlinx/coroutines/internal/Segment;I)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 5
    .line 6
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getSEGMENT_SIZE$p()I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, L땔뎽뒵뎹뒨뒷딅땻땹뎠뒤뒙듻뒛뒛땹딌돝뒙땃돠뎻땳땝됴딃딜뒋딁될땁뒹든딟둠듟뒵뎻뎽듐땐땹될두둔뒈땐둔땣뒼듰뒘뒈듔듻땲듽땔돠땫둣돨딸땸땃뒙됩뒹뒉듟뒙뒵땦될땡땄뒾됴된땜딎땝뒛땥뒷땩땋돸뎨둡땝땸딝도듽뎨땄듽듌땰땭듌땳뒉뒐뒝됫딤땥뎠둠둠딄뒼뎰딨듰뒾딁뒀뒈땮듽땀땬듻딨땟뒝돵;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final getNumberOfSlots()I
    .locals 1

    .line 1
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getSEGMENT_SIZE$p()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final onCancellation(ILjava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V
    .locals 0

    .line 1
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getCANCELLED$p()Lkotlinx/coroutines/internal/Symbol;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object p3, p0, L땔뎽뒵뎹뒨뒷딅땻땹뎠뒤뒙듻뒛뒛땹딌돝뒙땃돠뎻땳땝됴딃딜뒋딁될땁뒹든딟둠듟뒵뎻뎽듐땐땹될두둔뒈땐둔땣뒼듰뒘뒈듔듻땲듽땔돠땫둣돨딸땸땃뒙됩뒹뒉듟뒙뒵땦될땡땄뒾됴된땜딎땝뒛땥뒷땩땋돸뎨둡땝땸딝도듽뎨땄듽듌땰땭듌땳뒉뒐뒝됫딤땥뎠둠둠딄뒼뎰딨듰뒾딁뒀뒈땮듽땀땬듻딨땟뒝돵;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 6
    .line 7
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/Segment;->onSlotCleaned()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SemaphoreSegment[id="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", hashCode="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const/16 v1, 0x5d

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0
.end method
