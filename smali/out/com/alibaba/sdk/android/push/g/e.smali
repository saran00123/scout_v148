.class Lcom/alibaba/sdk/android/push/g/e;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/push/g/e;->d:Z

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/push/g/e;->e:Z

    iput p1, p0, Lcom/alibaba/sdk/android/push/g/e;->a:I

    iput p2, p0, Lcom/alibaba/sdk/android/push/g/e;->b:I

    iput-object p3, p0, Lcom/alibaba/sdk/android/push/g/e;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/alibaba/sdk/android/push/g/e;->a:I

    return v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/alibaba/sdk/android/push/g/e;->a:I

    return-void
.end method

.method public a(IILjava/lang/String;ZZ)V
    .registers 6

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/push/g/e;->a(I)V

    invoke-virtual {p0, p2}, Lcom/alibaba/sdk/android/push/g/e;->b(I)V

    invoke-virtual {p0, p3}, Lcom/alibaba/sdk/android/push/g/e;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lcom/alibaba/sdk/android/push/g/e;->a(Z)V

    invoke-virtual {p0, p5}, Lcom/alibaba/sdk/android/push/g/e;->b(Z)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/g/e;->c:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/push/g/e;->d:Z

    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/alibaba/sdk/android/push/g/e;->b:I

    return v0
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/alibaba/sdk/android/push/g/e;->b:I

    return-void
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/push/g/e;->e:Z

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/g/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/push/g/e;->d:Z

    return v0
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/push/g/e;->e:Z

    return v0
.end method
