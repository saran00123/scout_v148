.class Lcom/taobao/agoo/TaobaoRegister$d;
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
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput-object p1, p0, Lcom/taobao/agoo/TaobaoRegister$d;->a:Ljava/lang/String;

    .line 249
    iput-object p2, p0, Lcom/taobao/agoo/TaobaoRegister$d;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/agoo/b;)V
    .registers 4

    .line 242
    invoke-direct {p0, p1, p2}, Lcom/taobao/agoo/TaobaoRegister$d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 5

    .line 254
    iget-object v0, p0, Lcom/taobao/agoo/TaobaoRegister$d;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/taobao/agoo/TaobaoRegister$d;->b:Ljava/lang/String;

    invoke-static {p1, p2, v0, v1}, Lcom/taobao/agoo/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method
