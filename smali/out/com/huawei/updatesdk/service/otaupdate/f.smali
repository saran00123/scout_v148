.class public Lcom/huawei/updatesdk/service/otaupdate/f;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static d:Lcom/huawei/updatesdk/service/otaupdate/f;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/huawei/updatesdk/service/otaupdate/f;

    invoke-direct {v0}, Lcom/huawei/updatesdk/service/otaupdate/f;-><init>()V

    sput-object v0, Lcom/huawei/updatesdk/service/otaupdate/f;->d:Lcom/huawei/updatesdk/service/otaupdate/f;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.huawei.appmarket"

    iput-object v0, p0, Lcom/huawei/updatesdk/service/otaupdate/f;->c:Ljava/lang/String;

    return-void
.end method

.method public static e()Lcom/huawei/updatesdk/service/otaupdate/f;
    .registers 1

    sget-object v0, Lcom/huawei/updatesdk/service/otaupdate/f;->d:Lcom/huawei/updatesdk/service/otaupdate/f;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/huawei/updatesdk/service/otaupdate/f;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/huawei/updatesdk/service/otaupdate/f;->a:Ljava/lang/String;

    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/huawei/updatesdk/service/otaupdate/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/huawei/updatesdk/service/otaupdate/f;->b:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/huawei/updatesdk/service/otaupdate/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/huawei/updatesdk/service/otaupdate/f;->a:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/huawei/updatesdk/service/otaupdate/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/huawei/updatesdk/service/otaupdate/f;->c:Ljava/lang/String;

    return-void
.end method

.method public d()Z
    .registers 3

    iget-object v0, p0, Lcom/huawei/updatesdk/service/otaupdate/f;->a:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/huawei/updatesdk/service/otaupdate/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x1

    return v0
.end method
