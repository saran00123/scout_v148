.class public Lcom/aliyun/ams/emas/push/notification/c;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static final TAG:Ljava/lang/String; = "MPS:CPushNotification"

.field public static a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:I

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/aliyun/ams/emas/push/notification/c;->a:Ljava/util/ArrayList;

    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, -0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x10

    if-lt v0, v6, :cond_40

    .line 86
    sget-object v0, Lcom/aliyun/ams/emas/push/notification/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lcom/aliyun/ams/emas/push/notification/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lcom/aliyun/ams/emas/push/notification/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v0, Lcom/aliyun/ams/emas/push/notification/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lcom/aliyun/ams/emas/push/notification/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_59

    .line 92
    :cond_40
    sget-object v0, Lcom/aliyun/ams/emas/push/notification/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Lcom/aliyun/ams/emas/push/notification/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lcom/aliyun/ams/emas/push/notification/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lcom/aliyun/ams/emas/push/notification/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lcom/aliyun/ams/emas/push/notification/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_59
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    const/4 v0, 0x0

    iput v0, p0, Lcom/aliyun/ams/emas/push/notification/c;->l:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 101
    iget v0, p0, Lcom/aliyun/ams/emas/push/notification/c;->j:I

    return v0
.end method

.method public a(I)V
    .registers 2

    .line 105
    iput p1, p0, Lcom/aliyun/ams/emas/push/notification/c;->j:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 114
    iput-object p1, p0, Lcom/aliyun/ams/emas/push/notification/c;->e:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 138
    iput-object p1, p0, Lcom/aliyun/ams/emas/push/notification/c;->b:Ljava/util/Map;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/aliyun/ams/emas/push/notification/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .registers 2

    if-gez p1, :cond_7

    mul-int/lit8 p1, p1, -0x1

    .line 172
    iput p1, p0, Lcom/aliyun/ams/emas/push/notification/c;->k:I

    goto :goto_9

    .line 174
    :cond_7
    iput p1, p0, Lcom/aliyun/ams/emas/push/notification/c;->k:I

    :goto_9
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 122
    iput-object p1, p0, Lcom/aliyun/ams/emas/push/notification/c;->f:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/aliyun/ams/emas/push/notification/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 130
    iput-object p1, p0, Lcom/aliyun/ams/emas/push/notification/c;->g:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/aliyun/ams/emas/push/notification/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .line 146
    iput-object p1, p0, Lcom/aliyun/ams/emas/push/notification/c;->c:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/aliyun/ams/emas/push/notification/c;->b:Ljava/util/Map;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 154
    iput-object p1, p0, Lcom/aliyun/ams/emas/push/notification/c;->d:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 142
    iget-object v0, p0, Lcom/aliyun/ams/emas/push/notification/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .registers 2

    .line 162
    iput-object p1, p0, Lcom/aliyun/ams/emas/push/notification/c;->h:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .line 150
    iget-object v0, p0, Lcom/aliyun/ams/emas/push/notification/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .registers 5

    .line 184
    :try_start_0
    sget-object v0, Lcom/aliyun/ams/emas/push/notification/c;->a:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 185
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/aliyun/ams/emas/push/notification/c;->l:I
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_22

    :catch_17
    move-exception p1

    const/4 v0, 0x0

    .line 188
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MPS:CPushNotification"

    const-string v2, "formar error:\u6570\u5b57\u683c\u5f0f\u9519\u8bef"

    invoke-static {v1, v2, p1, v0}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_22
    :goto_22
    return-void
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 158
    iget-object v0, p0, Lcom/aliyun/ams/emas/push/notification/c;->h:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .registers 2

    .line 197
    iput-object p1, p0, Lcom/aliyun/ams/emas/push/notification/c;->m:Ljava/lang/String;

    return-void
.end method

.method public i()I
    .registers 2

    .line 166
    iget v0, p0, Lcom/aliyun/ams/emas/push/notification/c;->k:I

    return v0
.end method

.method public i(Ljava/lang/String;)V
    .registers 2

    .line 205
    iput-object p1, p0, Lcom/aliyun/ams/emas/push/notification/c;->n:Ljava/lang/String;

    return-void
.end method

.method public j()I
    .registers 2

    .line 179
    iget v0, p0, Lcom/aliyun/ams/emas/push/notification/c;->l:I

    return v0
.end method

.method public j(Ljava/lang/String;)V
    .registers 2

    .line 213
    iput-object p1, p0, Lcom/aliyun/ams/emas/push/notification/c;->i:Ljava/lang/String;

    return-void
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .line 193
    iget-object v0, p0, Lcom/aliyun/ams/emas/push/notification/c;->m:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .registers 2

    .line 221
    iput-object p1, p0, Lcom/aliyun/ams/emas/push/notification/c;->o:Ljava/lang/String;

    return-void
.end method

.method public l()Ljava/lang/String;
    .registers 2

    .line 201
    iget-object v0, p0, Lcom/aliyun/ams/emas/push/notification/c;->n:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    .line 209
    iget-object v0, p0, Lcom/aliyun/ams/emas/push/notification/c;->i:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .line 217
    iget-object v0, p0, Lcom/aliyun/ams/emas/push/notification/c;->o:Ljava/lang/String;

    return-object v0
.end method
