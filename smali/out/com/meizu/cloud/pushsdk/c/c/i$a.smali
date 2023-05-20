.class public Lcom/meizu/cloud/pushsdk/c/c/i$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/cloud/pushsdk/c/c/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/meizu/cloud/pushsdk/c/c/f;

.field private b:Ljava/lang/String;

.field private c:Lcom/meizu/cloud/pushsdk/c/c/c$a;

.field private d:Lcom/meizu/cloud/pushsdk/c/c/j;

.field private e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GET"

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/c/c/i$a;->b:Ljava/lang/String;

    new-instance v0, Lcom/meizu/cloud/pushsdk/c/c/c$a;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/c/c/c$a;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/c/c/i$a;->c:Lcom/meizu/cloud/pushsdk/c/c/c$a;

    return-void
.end method

.method static synthetic a(Lcom/meizu/cloud/pushsdk/c/c/i$a;)Lcom/meizu/cloud/pushsdk/c/c/f;
    .registers 1

    iget-object p0, p0, Lcom/meizu/cloud/pushsdk/c/c/i$a;->a:Lcom/meizu/cloud/pushsdk/c/c/f;

    return-object p0
.end method

.method static synthetic b(Lcom/meizu/cloud/pushsdk/c/c/i$a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/meizu/cloud/pushsdk/c/c/i$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/meizu/cloud/pushsdk/c/c/i$a;)Lcom/meizu/cloud/pushsdk/c/c/c$a;
    .registers 1

    iget-object p0, p0, Lcom/meizu/cloud/pushsdk/c/c/i$a;->c:Lcom/meizu/cloud/pushsdk/c/c/c$a;

    return-object p0
.end method

.method static synthetic d(Lcom/meizu/cloud/pushsdk/c/c/i$a;)Lcom/meizu/cloud/pushsdk/c/c/j;
    .registers 1

    iget-object p0, p0, Lcom/meizu/cloud/pushsdk/c/c/i$a;->d:Lcom/meizu/cloud/pushsdk/c/c/j;

    return-object p0
.end method

.method static synthetic e(Lcom/meizu/cloud/pushsdk/c/c/i$a;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/meizu/cloud/pushsdk/c/c/i$a;->e:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/meizu/cloud/pushsdk/c/c/i$a;
    .registers 3

    const-string v0, "GET"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/meizu/cloud/pushsdk/c/c/i$a;->a(Ljava/lang/String;Lcom/meizu/cloud/pushsdk/c/c/j;)Lcom/meizu/cloud/pushsdk/c/c/i$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/meizu/cloud/pushsdk/c/c/c;)Lcom/meizu/cloud/pushsdk/c/c/i$a;
    .registers 2

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/c/c/c;->c()Lcom/meizu/cloud/pushsdk/c/c/c$a;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/c/c/i$a;->c:Lcom/meizu/cloud/pushsdk/c/c/c$a;

    return-object p0
.end method

.method public a(Lcom/meizu/cloud/pushsdk/c/c/f;)Lcom/meizu/cloud/pushsdk/c/c/i$a;
    .registers 3

    if-eqz p1, :cond_5

    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/c/c/i$a;->a:Lcom/meizu/cloud/pushsdk/c/c/f;

    return-object p0

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "url == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/meizu/cloud/pushsdk/c/c/j;)Lcom/meizu/cloud/pushsdk/c/c/i$a;
    .registers 3

    const-string v0, "POST"

    invoke-virtual {p0, v0, p1}, Lcom/meizu/cloud/pushsdk/c/c/i$a;->a(Ljava/lang/String;Lcom/meizu/cloud/pushsdk/c/c/j;)Lcom/meizu/cloud/pushsdk/c/c/i$a;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/c/c/i$a;
    .registers 8

    if-eqz p1, :cond_61

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    const-string v3, "ws:"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    :goto_1a
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3f

    :cond_26
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const-string v3, "wss:"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_3f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    goto :goto_1a

    :cond_3f
    :goto_3f
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/c/c/f;->c(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/c/c/f;

    move-result-object v0

    if-eqz v0, :cond_4a

    invoke-virtual {p0, v0}, Lcom/meizu/cloud/pushsdk/c/c/i$a;->a(Lcom/meizu/cloud/pushsdk/c/c/f;)Lcom/meizu/cloud/pushsdk/c/c/i$a;

    move-result-object p1

    return-object p1

    :cond_4a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_61
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "url == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Lcom/meizu/cloud/pushsdk/c/c/j;)Lcom/meizu/cloud/pushsdk/c/c/i$a;
    .registers 5

    if-eqz p1, :cond_55

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_55

    const-string v0, "method "

    if-eqz p2, :cond_2d

    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/c/c/d;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_2d

    :cond_13
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must not have a request body."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2d
    :goto_2d
    if-nez p2, :cond_50

    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/c/c/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_36

    goto :goto_50

    :cond_36
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must have a request body."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_50
    :goto_50
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/c/c/i$a;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/meizu/cloud/pushsdk/c/c/i$a;->d:Lcom/meizu/cloud/pushsdk/c/c/j;

    return-object p0

    :cond_55
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "method == null || method.length() == 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/c/c/i$a;
    .registers 4

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/c/c/i$a;->c:Lcom/meizu/cloud/pushsdk/c/c/c$a;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/cloud/pushsdk/c/c/c$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/c/c/c$a;

    return-object p0
.end method

.method public b()Lcom/meizu/cloud/pushsdk/c/c/i$a;
    .registers 3

    const-string v0, "HEAD"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/meizu/cloud/pushsdk/c/c/i$a;->a(Ljava/lang/String;Lcom/meizu/cloud/pushsdk/c/c/j;)Lcom/meizu/cloud/pushsdk/c/c/i$a;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/meizu/cloud/pushsdk/c/c/j;)Lcom/meizu/cloud/pushsdk/c/c/i$a;
    .registers 3

    const-string v0, "DELETE"

    invoke-virtual {p0, v0, p1}, Lcom/meizu/cloud/pushsdk/c/c/i$a;->a(Ljava/lang/String;Lcom/meizu/cloud/pushsdk/c/c/j;)Lcom/meizu/cloud/pushsdk/c/c/i$a;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/meizu/cloud/pushsdk/c/c/j;)Lcom/meizu/cloud/pushsdk/c/c/i$a;
    .registers 3

    const-string v0, "PUT"

    invoke-virtual {p0, v0, p1}, Lcom/meizu/cloud/pushsdk/c/c/i$a;->a(Ljava/lang/String;Lcom/meizu/cloud/pushsdk/c/c/j;)Lcom/meizu/cloud/pushsdk/c/c/i$a;

    move-result-object p1

    return-object p1
.end method

.method public c()Lcom/meizu/cloud/pushsdk/c/c/i;
    .registers 3

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/c/c/i$a;->a:Lcom/meizu/cloud/pushsdk/c/c/f;

    if-eqz v0, :cond_b

    new-instance v0, Lcom/meizu/cloud/pushsdk/c/c/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/cloud/pushsdk/c/c/i;-><init>(Lcom/meizu/cloud/pushsdk/c/c/i$a;Lcom/meizu/cloud/pushsdk/c/c/i$1;)V

    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(Lcom/meizu/cloud/pushsdk/c/c/j;)Lcom/meizu/cloud/pushsdk/c/c/i$a;
    .registers 3

    const-string v0, "PATCH"

    invoke-virtual {p0, v0, p1}, Lcom/meizu/cloud/pushsdk/c/c/i$a;->a(Ljava/lang/String;Lcom/meizu/cloud/pushsdk/c/c/j;)Lcom/meizu/cloud/pushsdk/c/c/i$a;

    move-result-object p1

    return-object p1
.end method
