.class Lcom/xiaomi/push/au$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/push/au;

.field a:Ljava/lang/Boolean;

.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/xiaomi/push/au;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/push/au$a;->a:Lcom/xiaomi/push/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaomi/push/au$a;->a:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/xiaomi/push/au$a;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaomi/push/au$a;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaomi/push/au$a;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaomi/push/au$a;->d:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/push/au;Lcom/xiaomi/push/av;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/xiaomi/push/au$a;-><init>(Lcom/xiaomi/push/au;)V

    return-void
.end method


# virtual methods
.method a()Z
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/push/au$a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/xiaomi/push/au$a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/xiaomi/push/au$a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/xiaomi/push/au$a;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    :cond_21
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/au$a;->a:Ljava/lang/Boolean;

    :cond_27
    iget-object v0, p0, Lcom/xiaomi/push/au$a;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    :goto_2d
    return v1
.end method
