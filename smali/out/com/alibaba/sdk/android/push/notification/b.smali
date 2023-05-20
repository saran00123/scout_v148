.class public Lcom/alibaba/sdk/android/push/notification/b;
.super Ljava/lang/Object;


# static fields
.field static a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

.field public static b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Z

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const-string v0, "MPS:CPushNotification"

    invoke-static {v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->getLogger(Ljava/lang/String;)Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/push/notification/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/push/notification/b;->b:Ljava/util/ArrayList;

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

    sget-object v0, Lcom/alibaba/sdk/android/push/notification/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/alibaba/sdk/android/push/notification/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/alibaba/sdk/android/push/notification/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/alibaba/sdk/android/push/notification/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/alibaba/sdk/android/push/notification/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/sdk/android/push/notification/b;->i:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    iput v0, p0, Lcom/alibaba/sdk/android/push/notification/b;->q:I

    iput v0, p0, Lcom/alibaba/sdk/android/push/notification/b;->r:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/alibaba/sdk/android/push/notification/b;->s:I

    iput v0, p0, Lcom/alibaba/sdk/android/push/notification/b;->t:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/alibaba/sdk/android/push/notification/b;->u:I

    iput v0, p0, Lcom/alibaba/sdk/android/push/notification/b;->v:I

    iput v0, p0, Lcom/alibaba/sdk/android/push/notification/b;->w:I

    iput v0, p0, Lcom/alibaba/sdk/android/push/notification/b;->x:I

    iput v0, p0, Lcom/alibaba/sdk/android/push/notification/b;->y:I

    iput v0, p0, Lcom/alibaba/sdk/android/push/notification/b;->z:I

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/push/notification/b;->A:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/notification/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/alibaba/sdk/android/push/notification/b;->p:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/notification/b;->g:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/notification/b;->c:Ljava/util/Map;

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/push/notification/b;->A:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/notification/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/alibaba/sdk/android/push/notification/b;->r:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/notification/b;->d:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/notification/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .registers 2

    iput p1, p0, Lcom/alibaba/sdk/android/push/notification/b;->s:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/notification/b;->e:Ljava/lang/String;

    return-void
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/alibaba/sdk/android/push/notification/b;->p:I

    return v0
.end method

.method public d(I)V
    .registers 2

    iput p1, p0, Lcom/alibaba/sdk/android/push/notification/b;->t:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/notification/b;->f:Ljava/lang/String;

    return-void
.end method

.method public e(I)V
    .registers 2

    iput p1, p0, Lcom/alibaba/sdk/android/push/notification/b;->u:I

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    sget-object v0, Lcom/alibaba/sdk/android/push/notification/b;->b:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/alibaba/sdk/android/push/notification/b;->q:I
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_1f

    :catch_17
    move-exception p1

    sget-object v0, Lcom/alibaba/sdk/android/push/notification/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v1, "formar error:\u6570\u5b57\u683c\u5f0f\u9519\u8bef"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/push/notification/b;->o:Z

    return v0
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lcom/alibaba/sdk/android/push/notification/b;->r:I

    return v0
.end method

.method public f(I)V
    .registers 2

    iput p1, p0, Lcom/alibaba/sdk/android/push/notification/b;->v:I

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/notification/b;->n:Ljava/lang/String;

    return-void
.end method

.method public g()I
    .registers 2

    iget v0, p0, Lcom/alibaba/sdk/android/push/notification/b;->s:I

    return v0
.end method

.method public g(I)V
    .registers 2

    iput p1, p0, Lcom/alibaba/sdk/android/push/notification/b;->w:I

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/notification/b;->h:Ljava/lang/String;

    return-void
.end method

.method public h()I
    .registers 2

    iget v0, p0, Lcom/alibaba/sdk/android/push/notification/b;->t:I

    return v0
.end method

.method public h(I)V
    .registers 2

    iput p1, p0, Lcom/alibaba/sdk/android/push/notification/b;->x:I

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/notification/b;->j:Ljava/lang/String;

    return-void
.end method

.method public i()I
    .registers 2

    iget v0, p0, Lcom/alibaba/sdk/android/push/notification/b;->u:I

    return v0
.end method

.method public i(I)V
    .registers 2

    iput p1, p0, Lcom/alibaba/sdk/android/push/notification/b;->y:I

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/notification/b;->k:Ljava/lang/String;

    return-void
.end method

.method public j()I
    .registers 2

    iget v0, p0, Lcom/alibaba/sdk/android/push/notification/b;->v:I

    return v0
.end method

.method public j(I)V
    .registers 2

    iput p1, p0, Lcom/alibaba/sdk/android/push/notification/b;->z:I

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/notification/b;->l:Ljava/lang/String;

    return-void
.end method

.method public k()I
    .registers 2

    iget v0, p0, Lcom/alibaba/sdk/android/push/notification/b;->w:I

    return v0
.end method

.method public k(I)V
    .registers 2

    iput p1, p0, Lcom/alibaba/sdk/android/push/notification/b;->i:I

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/notification/b;->m:Ljava/lang/String;

    return-void
.end method

.method public l()I
    .registers 2

    iget v0, p0, Lcom/alibaba/sdk/android/push/notification/b;->x:I

    return v0
.end method

.method public m()I
    .registers 2

    iget v0, p0, Lcom/alibaba/sdk/android/push/notification/b;->y:I

    return v0
.end method

.method public n()I
    .registers 2

    iget v0, p0, Lcom/alibaba/sdk/android/push/notification/b;->z:I

    return v0
.end method

.method public o()Z
    .registers 2

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/push/notification/b;->A:Z

    return v0
.end method

.method public p()I
    .registers 2

    iget v0, p0, Lcom/alibaba/sdk/android/push/notification/b;->q:I

    return v0
.end method

.method public q()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/notification/b;->n:Ljava/lang/String;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/notification/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method public s()I
    .registers 2

    iget v0, p0, Lcom/alibaba/sdk/android/push/notification/b;->i:I

    return v0
.end method

.method public t()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/notification/b;->j:Ljava/lang/String;

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/notification/b;->k:Ljava/lang/String;

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/notification/b;->l:Ljava/lang/String;

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/notification/b;->m:Ljava/lang/String;

    return-object v0
.end method
