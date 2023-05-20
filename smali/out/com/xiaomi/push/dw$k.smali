.class public final Lcom/xiaomi/push/dw$k;
.super Lcom/xiaomi/push/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/dw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "k"
.end annotation


# instance fields
.field private a:I

.field private a:J

.field private a:Ljava/lang/String;

.field private a:Z

.field private b:I

.field private b:J

.field private b:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/xiaomi/push/e;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/dw$k;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/push/dw$k;->b:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/push/dw$k;->a:J

    iput-wide v0, p0, Lcom/xiaomi/push/dw$k;->b:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/push/dw$k;->f:Z

    iput v0, p0, Lcom/xiaomi/push/dw$k;->a:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/push/dw$k;->b:I

    return-void
.end method

.method public static a([B)Lcom/xiaomi/push/dw$k;
    .registers 2

    new-instance v0, Lcom/xiaomi/push/dw$k;

    invoke-direct {v0}, Lcom/xiaomi/push/dw$k;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/dw$k;->a([B)Lcom/xiaomi/push/e;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/push/dw$k;

    return-object p0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/xiaomi/push/dw$k;->b:I

    if-gez v0, :cond_7

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$k;->b()I

    :cond_7
    iget v0, p0, Lcom/xiaomi/push/dw$k;->b:I

    return v0
.end method

.method public a()J
    .registers 3

    iget-wide v0, p0, Lcom/xiaomi/push/dw$k;->a:J

    return-wide v0
.end method

.method public a(I)Lcom/xiaomi/push/dw$k;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/dw$k;->g:Z

    iput p1, p0, Lcom/xiaomi/push/dw$k;->a:I

    return-object p0
.end method

.method public a(J)Lcom/xiaomi/push/dw$k;
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/dw$k;->c:Z

    iput-wide p1, p0, Lcom/xiaomi/push/dw$k;->a:J

    return-object p0
.end method

.method public a(Lcom/xiaomi/push/b;)Lcom/xiaomi/push/dw$k;
    .registers 4

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/xiaomi/push/b;->a()I

    move-result v0

    if-eqz v0, :cond_55

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4d

    const/16 v1, 0x12

    if-eq v0, v1, :cond_45

    const/16 v1, 0x18

    if-eq v0, v1, :cond_3d

    const/16 v1, 0x20

    if-eq v0, v1, :cond_35

    const/16 v1, 0x28

    if-eq v0, v1, :cond_2d

    const/16 v1, 0x30

    if-eq v0, v1, :cond_25

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/push/dw$k;->a(Lcom/xiaomi/push/b;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_25
    invoke-virtual {p1}, Lcom/xiaomi/push/b;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/dw$k;->a(I)Lcom/xiaomi/push/dw$k;

    goto :goto_0

    :cond_2d
    invoke-virtual {p1}, Lcom/xiaomi/push/b;->a()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/dw$k;->a(Z)Lcom/xiaomi/push/dw$k;

    goto :goto_0

    :cond_35
    invoke-virtual {p1}, Lcom/xiaomi/push/b;->a()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/push/dw$k;->b(J)Lcom/xiaomi/push/dw$k;

    goto :goto_0

    :cond_3d
    invoke-virtual {p1}, Lcom/xiaomi/push/b;->a()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/push/dw$k;->a(J)Lcom/xiaomi/push/dw$k;

    goto :goto_0

    :cond_45
    invoke-virtual {p1}, Lcom/xiaomi/push/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/dw$k;->b(Ljava/lang/String;)Lcom/xiaomi/push/dw$k;

    goto :goto_0

    :cond_4d
    invoke-virtual {p1}, Lcom/xiaomi/push/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/dw$k;->a(Ljava/lang/String;)Lcom/xiaomi/push/dw$k;

    goto :goto_0

    :cond_55
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/xiaomi/push/dw$k;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/dw$k;->a:Z

    iput-object p1, p0, Lcom/xiaomi/push/dw$k;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/xiaomi/push/dw$k;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/dw$k;->e:Z

    iput-boolean p1, p0, Lcom/xiaomi/push/dw$k;->f:Z

    return-object p0
.end method

.method public bridge synthetic a(Lcom/xiaomi/push/b;)Lcom/xiaomi/push/e;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/dw$k;->a(Lcom/xiaomi/push/b;)Lcom/xiaomi/push/dw$k;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/dw$k;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/xiaomi/push/c;)V
    .registers 5

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$k;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->a(ILjava/lang/String;)V

    :cond_e
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$k;->b()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$k;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->a(ILjava/lang/String;)V

    :cond_1c
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$k;->c()Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$k;->a()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/xiaomi/push/c;->a(IJ)V

    :cond_2a
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$k;->d()Z

    move-result v0

    if-eqz v0, :cond_38

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$k;->b()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/xiaomi/push/c;->a(IJ)V

    :cond_38
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$k;->f()Z

    move-result v0

    if-eqz v0, :cond_46

    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$k;->e()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->a(IZ)V

    :cond_46
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$k;->g()Z

    move-result v0

    if-eqz v0, :cond_54

    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$k;->c()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->a(II)V

    :cond_54
    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/push/dw$k;->a:Z

    return v0
.end method

.method public b()I
    .registers 5

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$k;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->a(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_11
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$k;->b()Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$k;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->a(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_21
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$k;->c()Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$k;->a()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/xiaomi/push/c;->a(IJ)I

    move-result v0

    add-int/2addr v1, v0

    :cond_31
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$k;->d()Z

    move-result v0

    if-eqz v0, :cond_41

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$k;->b()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/xiaomi/push/c;->a(IJ)I

    move-result v0

    add-int/2addr v1, v0

    :cond_41
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$k;->f()Z

    move-result v0

    if-eqz v0, :cond_51

    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$k;->e()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->a(IZ)I

    move-result v0

    add-int/2addr v1, v0

    :cond_51
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$k;->g()Z

    move-result v0

    if-eqz v0, :cond_61

    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$k;->c()I

    move-result v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->a(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_61
    iput v1, p0, Lcom/xiaomi/push/dw$k;->b:I

    return v1
.end method

.method public b()J
    .registers 3

    iget-wide v0, p0, Lcom/xiaomi/push/dw$k;->b:J

    return-wide v0
.end method

.method public b(J)Lcom/xiaomi/push/dw$k;
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/dw$k;->d:Z

    iput-wide p1, p0, Lcom/xiaomi/push/dw$k;->b:J

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/xiaomi/push/dw$k;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/dw$k;->b:Z

    iput-object p1, p0, Lcom/xiaomi/push/dw$k;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/dw$k;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/push/dw$k;->b:Z

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/xiaomi/push/dw$k;->a:I

    return v0
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/push/dw$k;->c:Z

    return v0
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/push/dw$k;->d:Z

    return v0
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/push/dw$k;->f:Z

    return v0
.end method

.method public f()Z
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/push/dw$k;->e:Z

    return v0
.end method

.method public g()Z
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/push/dw$k;->g:Z

    return v0
.end method
