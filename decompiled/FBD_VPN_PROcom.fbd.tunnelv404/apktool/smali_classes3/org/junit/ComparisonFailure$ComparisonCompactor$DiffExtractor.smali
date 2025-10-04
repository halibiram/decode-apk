.class Lorg/junit/ComparisonFailure$ComparisonCompactor$DiffExtractor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/ComparisonFailure$ComparisonCompactor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DiffExtractor"
.end annotation


# instance fields
.field private final sharedPrefix:Ljava/lang/String;

.field private final sharedSuffix:Ljava/lang/String;

.field final synthetic this$0:Lorg/junit/ComparisonFailure$ComparisonCompactor;


# direct methods
.method private constructor <init>(Lorg/junit/ComparisonFailure$ComparisonCompactor;)V
    .locals 1

    .line 2
    iput-object p1, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor$DiffExtractor;->this$0:Lorg/junit/ComparisonFailure$ComparisonCompactor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lorg/junit/ComparisonFailure$ComparisonCompactor;->access$100(Lorg/junit/ComparisonFailure$ComparisonCompactor;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor$DiffExtractor;->sharedPrefix:Ljava/lang/String;

    .line 4
    invoke-static {p1, v0}, Lorg/junit/ComparisonFailure$ComparisonCompactor;->access$200(Lorg/junit/ComparisonFailure$ComparisonCompactor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor$DiffExtractor;->sharedSuffix:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/junit/ComparisonFailure$ComparisonCompactor;Lorg/junit/ComparisonFailure$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/junit/ComparisonFailure$ComparisonCompactor$DiffExtractor;-><init>(Lorg/junit/ComparisonFailure$ComparisonCompactor;)V

    return-void
.end method

.method private extractDiff(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor$DiffExtractor;->sharedPrefix:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    iget-object v3, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor$DiffExtractor;->sharedSuffix:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    sub-int/2addr v2, v3

    .line 25
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p1, "]"

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1
.end method


# virtual methods
.method public actualDiff()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor$DiffExtractor;->this$0:Lorg/junit/ComparisonFailure$ComparisonCompactor;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/junit/ComparisonFailure$ComparisonCompactor;->access$400(Lorg/junit/ComparisonFailure$ComparisonCompactor;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lorg/junit/ComparisonFailure$ComparisonCompactor$DiffExtractor;->extractDiff(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public compactPrefix()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor$DiffExtractor;->sharedPrefix:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor$DiffExtractor;->this$0:Lorg/junit/ComparisonFailure$ComparisonCompactor;

    .line 8
    .line 9
    invoke-static {v1}, Lorg/junit/ComparisonFailure$ComparisonCompactor;->access$500(Lorg/junit/ComparisonFailure$ComparisonCompactor;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-gt v0, v1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor$DiffExtractor;->sharedPrefix:Ljava/lang/String;

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v1, "..."

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor$DiffExtractor;->sharedPrefix:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    iget-object v3, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor$DiffExtractor;->this$0:Lorg/junit/ComparisonFailure$ComparisonCompactor;

    .line 32
    .line 33
    invoke-static {v3}, Lorg/junit/ComparisonFailure$ComparisonCompactor;->access$500(Lorg/junit/ComparisonFailure$ComparisonCompactor;)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    sub-int/2addr v2, v3

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    return-object v0
.end method

.method public compactSuffix()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor$DiffExtractor;->sharedSuffix:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor$DiffExtractor;->this$0:Lorg/junit/ComparisonFailure$ComparisonCompactor;

    .line 8
    .line 9
    invoke-static {v1}, Lorg/junit/ComparisonFailure$ComparisonCompactor;->access$500(Lorg/junit/ComparisonFailure$ComparisonCompactor;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-gt v0, v1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor$DiffExtractor;->sharedSuffix:Ljava/lang/String;

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor$DiffExtractor;->sharedSuffix:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v2, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor$DiffExtractor;->this$0:Lorg/junit/ComparisonFailure$ComparisonCompactor;

    .line 26
    .line 27
    invoke-static {v2}, Lorg/junit/ComparisonFailure$ComparisonCompactor;->access$500(Lorg/junit/ComparisonFailure$ComparisonCompactor;)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, "..."

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    return-object v0
.end method

.method public expectedDiff()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor$DiffExtractor;->this$0:Lorg/junit/ComparisonFailure$ComparisonCompactor;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/junit/ComparisonFailure$ComparisonCompactor;->access$300(Lorg/junit/ComparisonFailure$ComparisonCompactor;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lorg/junit/ComparisonFailure$ComparisonCompactor$DiffExtractor;->extractDiff(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
