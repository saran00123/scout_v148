.class Lcom/ta/utdid2/device/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 16
    invoke-static {p1}, Lcom/ta/utdid2/a/a/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 24
    invoke-static {p1}, Lcom/ta/utdid2/a/a/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-static {p1}, Lcom/ta/utdid2/a/a/f;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_16

    const/4 v0, 0x0

    .line 27
    :try_start_c
    invoke-static {p1, v0}, Lcom/ta/utdid2/a/a/b;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 28
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_15} :catch_16

    return-object v0

    :catch_16
    :cond_16
    return-object v1
.end method
