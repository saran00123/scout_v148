.class public Lcom/huawei/hms/hatool/m1;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static b:Lcom/huawei/hms/hatool/m1;


# instance fields
.field public a:Lcom/huawei/hms/hatool/h1;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/huawei/hms/hatool/m1;

    invoke-direct {v0}, Lcom/huawei/hms/hatool/m1;-><init>()V

    sput-object v0, Lcom/huawei/hms/hatool/m1;->b:Lcom/huawei/hms/hatool/m1;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hms/hatool/m1;->a:Lcom/huawei/hms/hatool/h1;

    return-void
.end method

.method public static c()Lcom/huawei/hms/hatool/m1;
    .registers 1

    sget-object v0, Lcom/huawei/hms/hatool/m1;->b:Lcom/huawei/hms/hatool/m1;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/huawei/hms/hatool/h1;)V
    .registers 2

    iput-object p1, p0, Lcom/huawei/hms/hatool/m1;->a:Lcom/huawei/hms/hatool/h1;

    return-void
.end method

.method public a()Z
    .registers 2

    iget-object v0, p0, Lcom/huawei/hms/hatool/m1;->a:Lcom/huawei/hms/hatool/h1;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public b()Lcom/huawei/hms/hatool/h1;
    .registers 2

    iget-object v0, p0, Lcom/huawei/hms/hatool/m1;->a:Lcom/huawei/hms/hatool/h1;

    return-object v0
.end method
