.class Lcom/taobao/agoo/TaobaoRegister$e;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lcom/taobao/agoo/TaobaoRegister$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/agoo/TaobaoRegister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/agoo/b;)V
    .registers 2

    .line 258
    invoke-direct {p0}, Lcom/taobao/agoo/TaobaoRegister$e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 3

    .line 261
    invoke-static {p1, p2}, Lcom/taobao/agoo/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method
