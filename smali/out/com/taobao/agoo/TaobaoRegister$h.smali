.class Lcom/taobao/agoo/TaobaoRegister$h;
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
    name = "h"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-object p1, p0, Lcom/taobao/agoo/TaobaoRegister$h;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 4

    .line 287
    iget-object v0, p0, Lcom/taobao/agoo/TaobaoRegister$h;->a:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/taobao/agoo/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method
