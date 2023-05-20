.class Lcom/xiaomi/push/fp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/push/service/bd$b$a;


# instance fields
.field private a:I

.field private a:Lcom/xiaomi/push/gj;

.field private a:Lcom/xiaomi/push/service/XMPushService;

.field private a:Lcom/xiaomi/push/service/bd$b;

.field private a:Lcom/xiaomi/push/service/bd$c;

.field private a:Z


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/bd$b;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/push/fp;->a:Z

    iput-object p1, p0, Lcom/xiaomi/push/fp;->a:Lcom/xiaomi/push/service/XMPushService;

    sget-object p1, Lcom/xiaomi/push/service/bd$c;->b:Lcom/xiaomi/push/service/bd$c;

    iput-object p1, p0, Lcom/xiaomi/push/fp;->a:Lcom/xiaomi/push/service/bd$c;

    iput-object p2, p0, Lcom/xiaomi/push/fp;->a:Lcom/xiaomi/push/service/bd$b;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/push/fp;)V
    .registers 1

    invoke-direct {p0}, Lcom/xiaomi/push/fp;->c()V

    return-void
.end method

.method private b()V
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/fp;->a:Lcom/xiaomi/push/service/bd$b;

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/service/bd$b;->b(Lcom/xiaomi/push/service/bd$b$a;)V

    return-void
.end method

.method private c()V
    .registers 5

    invoke-direct {p0}, Lcom/xiaomi/push/fp;->b()V

    iget-boolean v0, p0, Lcom/xiaomi/push/fp;->a:Z

    if-nez v0, :cond_8

    return-void

    :cond_8
    iget v0, p0, Lcom/xiaomi/push/fp;->a:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_f

    return-void

    :cond_f
    invoke-static {}, Lcom/xiaomi/push/fu;->a()Lcom/xiaomi/push/fu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/fu;->a()Lcom/xiaomi/push/fn;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/push/fr;->a:[I

    iget-object v2, p0, Lcom/xiaomi/push/fp;->a:Lcom/xiaomi/push/service/bd$c;

    invoke-virtual {v2}, Lcom/xiaomi/push/service/bd$c;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_34

    const/4 v3, 0x2

    if-eq v1, v3, :cond_5f

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2b

    goto :goto_5f

    :cond_2b
    sget-object v1, Lcom/xiaomi/push/fm;->H:Lcom/xiaomi/push/fm;

    :goto_2d
    invoke-virtual {v1}, Lcom/xiaomi/push/fm;->a()I

    move-result v1

    iput v1, v0, Lcom/xiaomi/push/fn;->a:I

    goto :goto_5f

    :cond_34
    iget v1, p0, Lcom/xiaomi/push/fp;->a:I

    const/16 v3, 0x11

    if-ne v1, v3, :cond_3d

    sget-object v1, Lcom/xiaomi/push/fm;->L:Lcom/xiaomi/push/fm;

    goto :goto_2d

    :cond_3d
    const/16 v3, 0x15

    if-ne v1, v3, :cond_44

    sget-object v1, Lcom/xiaomi/push/fm;->S:Lcom/xiaomi/push/fm;

    goto :goto_2d

    :cond_44
    :try_start_44
    invoke-static {}, Lcom/xiaomi/push/fu;->a()Lcom/xiaomi/push/ft;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/push/ft;->a()Ljava/lang/Exception;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/push/fs;->c(Ljava/lang/Exception;)Lcom/xiaomi/push/fs$a;

    move-result-object v1

    iget-object v3, v1, Lcom/xiaomi/push/fs$a;->a:Lcom/xiaomi/push/fm;

    invoke-virtual {v3}, Lcom/xiaomi/push/fm;->a()I

    move-result v3

    iput v3, v0, Lcom/xiaomi/push/fn;->a:I

    iget-object v1, v1, Lcom/xiaomi/push/fs$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/fn;->c(Ljava/lang/String;)Lcom/xiaomi/push/fn;
    :try_end_5d
    .catch Ljava/lang/NullPointerException; {:try_start_44 .. :try_end_5d} :catch_5e

    goto :goto_5f

    :catch_5e
    const/4 v0, 0x0

    :cond_5f
    :goto_5f
    if-eqz v0, :cond_86

    iget-object v1, p0, Lcom/xiaomi/push/fp;->a:Lcom/xiaomi/push/gj;

    invoke-virtual {v1}, Lcom/xiaomi/push/gj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/fn;->b(Ljava/lang/String;)Lcom/xiaomi/push/fn;

    iget-object v1, p0, Lcom/xiaomi/push/fp;->a:Lcom/xiaomi/push/service/bd$b;

    iget-object v1, v1, Lcom/xiaomi/push/service/bd$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/fn;->d(Ljava/lang/String;)Lcom/xiaomi/push/fn;

    iput v2, v0, Lcom/xiaomi/push/fn;->b:I

    :try_start_73
    iget-object v1, p0, Lcom/xiaomi/push/fp;->a:Lcom/xiaomi/push/service/bd$b;

    iget-object v1, v1, Lcom/xiaomi/push/service/bd$b;->g:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/fn;->a(B)Lcom/xiaomi/push/fn;
    :try_end_7f
    .catch Ljava/lang/NumberFormatException; {:try_start_73 .. :try_end_7f} :catch_7f

    :catch_7f
    invoke-static {}, Lcom/xiaomi/push/fu;->a()Lcom/xiaomi/push/fu;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/fu;->a(Lcom/xiaomi/push/fn;)V

    :cond_86
    return-void
.end method


# virtual methods
.method a()V
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/fp;->a:Lcom/xiaomi/push/service/bd$b;

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/service/bd$b;->a(Lcom/xiaomi/push/service/bd$b$a;)V

    iget-object v0, p0, Lcom/xiaomi/push/fp;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->a()Lcom/xiaomi/push/gj;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/fp;->a:Lcom/xiaomi/push/gj;

    return-void
.end method

.method public a(Lcom/xiaomi/push/service/bd$c;Lcom/xiaomi/push/service/bd$c;I)V
    .registers 5

    iget-boolean v0, p0, Lcom/xiaomi/push/fp;->a:Z

    if-nez v0, :cond_f

    sget-object v0, Lcom/xiaomi/push/service/bd$c;->b:Lcom/xiaomi/push/service/bd$c;

    if-ne p1, v0, :cond_f

    iput-object p2, p0, Lcom/xiaomi/push/fp;->a:Lcom/xiaomi/push/service/bd$c;

    iput p3, p0, Lcom/xiaomi/push/fp;->a:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaomi/push/fp;->a:Z

    :cond_f
    iget-object p1, p0, Lcom/xiaomi/push/fp;->a:Lcom/xiaomi/push/service/XMPushService;

    new-instance p2, Lcom/xiaomi/push/fq;

    const/4 p3, 0x4

    invoke-direct {p2, p0, p3}, Lcom/xiaomi/push/fq;-><init>(Lcom/xiaomi/push/fp;I)V

    invoke-virtual {p1, p2}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$j;)V

    return-void
.end method
