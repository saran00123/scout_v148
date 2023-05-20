.class public Lcom/huawei/hms/framework/network/grs/g/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/framework/network/grs/g/b$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/huawei/hms/framework/network/grs/g/e;

.field private b:Ljava/lang/String;

.field private c:Lcom/huawei/hms/framework/network/grs/g/a;

.field private d:I

.field private e:Landroid/content/Context;

.field private f:Ljava/lang/String;

.field private g:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

.field private h:Lcom/huawei/hms/framework/network/grs/e/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/huawei/hms/framework/network/grs/g/a;Landroid/content/Context;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Lcom/huawei/hms/framework/network/grs/e/c;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/g/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/huawei/hms/framework/network/grs/g/b;->c:Lcom/huawei/hms/framework/network/grs/g/a;

    iput p2, p0, Lcom/huawei/hms/framework/network/grs/g/b;->d:I

    iput-object p4, p0, Lcom/huawei/hms/framework/network/grs/g/b;->e:Landroid/content/Context;

    iput-object p5, p0, Lcom/huawei/hms/framework/network/grs/g/b;->f:Ljava/lang/String;

    iput-object p6, p0, Lcom/huawei/hms/framework/network/grs/g/b;->g:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    iput-object p7, p0, Lcom/huawei/hms/framework/network/grs/g/b;->h:Lcom/huawei/hms/framework/network/grs/e/c;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private h()Lcom/huawei/hms/framework/network/grs/g/b$a;
    .registers 3

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/g/b;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/huawei/hms/framework/network/grs/g/b$a;->c:Lcom/huawei/hms/framework/network/grs/g/b$a;

    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/g/b;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/huawei/hms/framework/network/grs/g/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    sget-object v0, Lcom/huawei/hms/framework/network/grs/g/b$a;->b:Lcom/huawei/hms/framework/network/grs/g/b$a;

    return-object v0

    :cond_1c
    const-string v1, "2.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    sget-object v0, Lcom/huawei/hms/framework/network/grs/g/b$a;->a:Lcom/huawei/hms/framework/network/grs/g/b$a;

    return-object v0

    :cond_27
    sget-object v0, Lcom/huawei/hms/framework/network/grs/g/b$a;->c:Lcom/huawei/hms/framework/network/grs/g/b$a;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/huawei/hms/framework/network/grs/g/a;
    .registers 2

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/g/b;->c:Lcom/huawei/hms/framework/network/grs/g/a;

    return-object v0
.end method

.method public b()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/g/b;->e:Landroid/content/Context;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/g/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/huawei/hms/framework/network/grs/g/b;->d:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/g/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lcom/huawei/hms/framework/network/grs/e/c;
    .registers 2

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/g/b;->h:Lcom/huawei/hms/framework/network/grs/e/c;

    return-object v0
.end method

.method public g()Ljava/util/concurrent/Callable;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Callable<",
            "Lcom/huawei/hms/framework/network/grs/g/e;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    sget-object v1, Lcom/huawei/hms/framework/network/grs/g/b$a;->c:Lcom/huawei/hms/framework/network/grs/g/b$a;

    invoke-direct/range {p0 .. p0}, Lcom/huawei/hms/framework/network/grs/g/b;->h()Lcom/huawei/hms/framework/network/grs/g/b$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x0

    return-object v1

    :cond_10
    sget-object v1, Lcom/huawei/hms/framework/network/grs/g/b$a;->b:Lcom/huawei/hms/framework/network/grs/g/b$a;

    invoke-direct/range {p0 .. p0}, Lcom/huawei/hms/framework/network/grs/g/b;->h()Lcom/huawei/hms/framework/network/grs/g/b$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    new-instance v1, Lcom/huawei/hms/framework/network/grs/g/g;

    iget-object v3, v0, Lcom/huawei/hms/framework/network/grs/g/b;->b:Ljava/lang/String;

    iget v4, v0, Lcom/huawei/hms/framework/network/grs/g/b;->d:I

    iget-object v5, v0, Lcom/huawei/hms/framework/network/grs/g/b;->c:Lcom/huawei/hms/framework/network/grs/g/a;

    iget-object v6, v0, Lcom/huawei/hms/framework/network/grs/g/b;->e:Landroid/content/Context;

    iget-object v7, v0, Lcom/huawei/hms/framework/network/grs/g/b;->f:Ljava/lang/String;

    iget-object v8, v0, Lcom/huawei/hms/framework/network/grs/g/b;->g:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/huawei/hms/framework/network/grs/g/g;-><init>(Ljava/lang/String;ILcom/huawei/hms/framework/network/grs/g/a;Landroid/content/Context;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V

    return-object v1

    :cond_2f
    new-instance v1, Lcom/huawei/hms/framework/network/grs/g/h;

    iget-object v10, v0, Lcom/huawei/hms/framework/network/grs/g/b;->b:Ljava/lang/String;

    iget v11, v0, Lcom/huawei/hms/framework/network/grs/g/b;->d:I

    iget-object v12, v0, Lcom/huawei/hms/framework/network/grs/g/b;->c:Lcom/huawei/hms/framework/network/grs/g/a;

    iget-object v13, v0, Lcom/huawei/hms/framework/network/grs/g/b;->e:Landroid/content/Context;

    iget-object v14, v0, Lcom/huawei/hms/framework/network/grs/g/b;->f:Ljava/lang/String;

    iget-object v15, v0, Lcom/huawei/hms/framework/network/grs/g/b;->g:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    iget-object v2, v0, Lcom/huawei/hms/framework/network/grs/g/b;->h:Lcom/huawei/hms/framework/network/grs/e/c;

    move-object v9, v1

    move-object/from16 v16, v2

    invoke-direct/range {v9 .. v16}, Lcom/huawei/hms/framework/network/grs/g/h;-><init>(Ljava/lang/String;ILcom/huawei/hms/framework/network/grs/g/a;Landroid/content/Context;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Lcom/huawei/hms/framework/network/grs/e/c;)V

    return-object v1
.end method
