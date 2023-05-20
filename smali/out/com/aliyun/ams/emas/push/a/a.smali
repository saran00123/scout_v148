.class public Lcom/aliyun/ams/emas/push/a/a;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static a:Lcom/aliyun/ams/emas/push/a/a;

.field private static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/aliyun/ams/emas/push/a/a;->b:Ljava/util/List;

    return-void
.end method

.method public static a()Lcom/aliyun/ams/emas/push/a/a;
    .registers 1

    .line 25
    sget-object v0, Lcom/aliyun/ams/emas/push/a/a;->a:Lcom/aliyun/ams/emas/push/a/a;

    if-nez v0, :cond_b

    .line 26
    new-instance v0, Lcom/aliyun/ams/emas/push/a/a;

    invoke-direct {v0}, Lcom/aliyun/ams/emas/push/a/a;-><init>()V

    sput-object v0, Lcom/aliyun/ams/emas/push/a/a;->a:Lcom/aliyun/ams/emas/push/a/a;

    .line 28
    :cond_b
    sget-object v0, Lcom/aliyun/ams/emas/push/a/a;->a:Lcom/aliyun/ams/emas/push/a/a;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .registers 3

    .line 32
    sget-object v0, Lcom/aliyun/ams/emas/push/a/a;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .registers 4

    const-string v0, "notification"

    .line 39
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 40
    :goto_8
    sget-object v0, Lcom/aliyun/ams/emas/push/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_31

    .line 41
    sget-object v0, Lcom/aliyun/ams/emas/push/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 42
    sget-object v0, Lcom/aliyun/ams/emas/push/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_8

    :cond_31
    return-void
.end method
