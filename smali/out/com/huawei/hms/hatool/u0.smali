.class public Lcom/huawei/hms/hatool/u0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static c:Lcom/huawei/hms/hatool/u0;


# instance fields
.field public a:Z

.field public b:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/huawei/hms/hatool/u0;

    invoke-direct {v0}, Lcom/huawei/hms/hatool/u0;-><init>()V

    sput-object v0, Lcom/huawei/hms/hatool/u0;->c:Lcom/huawei/hms/hatool/u0;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hms/hatool/u0;->a:Z

    invoke-static {}, Lcom/huawei/hms/hatool/b;->f()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/hatool/u0;->b:Landroid/content/Context;

    return-void
.end method

.method public static b()Lcom/huawei/hms/hatool/u0;
    .registers 1

    sget-object v0, Lcom/huawei/hms/hatool/u0;->c:Lcom/huawei/hms/hatool/u0;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    iget-boolean v0, p0, Lcom/huawei/hms/hatool/u0;->a:Z

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/huawei/hms/hatool/u0;->b:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_22

    const-string v2, "user"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    goto :goto_23

    :cond_1f
    iput-boolean v1, p0, Lcom/huawei/hms/hatool/u0;->a:Z

    goto :goto_25

    :cond_22
    const/4 v0, 0x1

    :goto_23
    iput-boolean v0, p0, Lcom/huawei/hms/hatool/u0;->a:Z

    :cond_25
    :goto_25
    iget-boolean v0, p0, Lcom/huawei/hms/hatool/u0;->a:Z

    return v0
.end method
