.class public Lcom/huawei/hms/hatool/x0$a;
.super Lcom/huawei/hms/hatool/y0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/hatool/x0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lcom/huawei/hms/hatool/y0;-><init>()V

    iput-object p1, p0, Lcom/huawei/hms/hatool/x0$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/huawei/hms/hatool/x0$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/huawei/hms/hatool/x0$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/huawei/hms/hatool/x0$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/huawei/hms/hatool/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p1}, Lcom/huawei/secure/android/common/encrypt/hash/SHA;->sha256Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/huawei/hms/hatool/x0$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/huawei/hms/hatool/x0$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/huawei/hms/hatool/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/huawei/hms/hatool/x0$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/huawei/hms/hatool/x0$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/huawei/hms/hatool/a;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .registers 5

    iget-object v0, p0, Lcom/huawei/hms/hatool/x0$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/huawei/hms/hatool/x0$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/huawei/hms/hatool/a;->k(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    const/4 v0, 0x4

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    or-int/2addr v0, v1

    iget-object v2, p0, Lcom/huawei/hms/hatool/x0$a;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/huawei/hms/hatool/x0$a;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/huawei/hms/hatool/a;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v1, 0x2

    :cond_1a
    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/huawei/hms/hatool/x0$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/huawei/hms/hatool/x0$a;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/huawei/hms/hatool/a;->h(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method
