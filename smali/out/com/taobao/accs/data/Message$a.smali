.class public Lcom/taobao/accs/data/Message$a;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/data/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iput p1, p0, Lcom/taobao/accs/data/Message$a;->a:I

    .line 302
    iput-object p2, p0, Lcom/taobao/accs/data/Message$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 306
    iget v0, p0, Lcom/taobao/accs/data/Message$a;->a:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 310
    iget-object v0, p0, Lcom/taobao/accs/data/Message$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2b

    .line 318
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2b

    .line 322
    :cond_12
    iget v2, p0, Lcom/taobao/accs/data/Message$a;->a:I

    check-cast p1, Lcom/taobao/accs/data/Message$a;

    invoke-virtual {p1}, Lcom/taobao/accs/data/Message$a;->a()I

    move-result v3

    if-eq v2, v3, :cond_2a

    iget-object v2, p0, Lcom/taobao/accs/data/Message$a;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/taobao/accs/data/Message$a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v1

    :cond_2a
    :goto_2a
    return v0

    :cond_2b
    :goto_2b
    return v1
.end method

.method public hashCode()I
    .registers 2

    .line 327
    iget-object v0, p0, Lcom/taobao/accs/data/Message$a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
