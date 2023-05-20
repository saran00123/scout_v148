.class public Lcom/xiaomi/push/ig;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/push/jg;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaomi/push/jg<",
        "Lcom/xiaomi/push/ig;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final a:Lcom/xiaomi/push/jo;

.field private static final a:Lcom/xiaomi/push/jw;

.field private static final b:Lcom/xiaomi/push/jo;

.field private static final c:Lcom/xiaomi/push/jo;

.field private static final d:Lcom/xiaomi/push/jo;

.field private static final e:Lcom/xiaomi/push/jo;

.field private static final f:Lcom/xiaomi/push/jo;

.field private static final g:Lcom/xiaomi/push/jo;


# instance fields
.field public a:I

.field public a:J

.field public a:Ljava/lang/String;

.field private a:Ljava/util/BitSet;

.field public a:Z

.field public b:I

.field public b:Z

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/xiaomi/push/jw;

    const-string v1, "OnlineConfigItem"

    invoke-direct {v0, v1}, Lcom/xiaomi/push/jw;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/ig;->a:Lcom/xiaomi/push/jw;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v1, 0x8

    const-string v2, ""

    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ig;->a:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/4 v3, 0x2

    invoke-direct {v0, v2, v1, v3}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ig;->b:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/4 v4, 0x3

    invoke-direct {v0, v2, v3, v4}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ig;->c:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/4 v4, 0x4

    invoke-direct {v0, v2, v1, v4}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ig;->d:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v1, 0xa

    const/4 v4, 0x5

    invoke-direct {v0, v2, v1, v4}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ig;->e:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v1, 0xb

    const/4 v4, 0x6

    invoke-direct {v0, v2, v1, v4}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ig;->f:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/4 v1, 0x7

    invoke-direct {v0, v2, v3, v1}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ig;->g:Lcom/xiaomi/push/jo;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/push/ig;->a:Ljava/util/BitSet;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/xiaomi/push/ig;->a:I

    return v0
.end method

.method public a(Lcom/xiaomi/push/ig;)I
    .registers 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_23
    invoke-virtual {p0}, Lcom/xiaomi/push/ig;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ig;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_3a

    return v0

    :cond_3a
    invoke-virtual {p0}, Lcom/xiaomi/push/ig;->a()Z

    move-result v0

    if-eqz v0, :cond_4b

    iget v0, p0, Lcom/xiaomi/push/ig;->a:I

    iget v1, p1, Lcom/xiaomi/push/ig;->a:I

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(II)I

    move-result v0

    if-eqz v0, :cond_4b

    return v0

    :cond_4b
    invoke-virtual {p0}, Lcom/xiaomi/push/ig;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ig;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_62

    return v0

    :cond_62
    invoke-virtual {p0}, Lcom/xiaomi/push/ig;->b()Z

    move-result v0

    if-eqz v0, :cond_73

    iget v0, p0, Lcom/xiaomi/push/ig;->b:I

    iget v1, p1, Lcom/xiaomi/push/ig;->b:I

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(II)I

    move-result v0

    if-eqz v0, :cond_73

    return v0

    :cond_73
    invoke-virtual {p0}, Lcom/xiaomi/push/ig;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ig;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_8a

    return v0

    :cond_8a
    invoke-virtual {p0}, Lcom/xiaomi/push/ig;->c()Z

    move-result v0

    if-eqz v0, :cond_9b

    iget-boolean v0, p0, Lcom/xiaomi/push/ig;->a:Z

    iget-boolean v1, p1, Lcom/xiaomi/push/ig;->a:Z

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(ZZ)I

    move-result v0

    if-eqz v0, :cond_9b

    return v0

    :cond_9b
    invoke-virtual {p0}, Lcom/xiaomi/push/ig;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ig;->d()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_b2

    return v0

    :cond_b2
    invoke-virtual {p0}, Lcom/xiaomi/push/ig;->d()Z

    move-result v0

    if-eqz v0, :cond_c3

    iget v0, p0, Lcom/xiaomi/push/ig;->c:I

    iget v1, p1, Lcom/xiaomi/push/ig;->c:I

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(II)I

    move-result v0

    if-eqz v0, :cond_c3

    return v0

    :cond_c3
    invoke-virtual {p0}, Lcom/xiaomi/push/ig;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ig;->e()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_da

    return v0

    :cond_da
    invoke-virtual {p0}, Lcom/xiaomi/push/ig;->e()Z

    move-result v0

    if-eqz v0, :cond_eb

    iget-wide v0, p0, Lcom/xiaomi/push/ig;->a:J

    iget-wide v2, p1, Lcom/xiaomi/push/ig;->a:J

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/push/jh;->a(JJ)I

    move-result v0

    if-eqz v0, :cond_eb

    return v0

    :cond_eb
    invoke-virtual {p0}, Lcom/xiaomi/push/ig;->f()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ig;->f()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_102

    return v0

    :cond_102
    invoke-virtual {p0}, Lcom/xiaomi/push/ig;->f()Z

    move-result v0

    if-eqz v0, :cond_113

    iget-object v0, p0, Lcom/xiaomi/push/ig;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/ig;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_113

    return v0

    :cond_113
    invoke-virtual {p0}, Lcom/xiaomi/push/ig;->h()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ig;->h()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_12a

    return v0

    :cond_12a
    invoke-virtual {p0}, Lcom/xiaomi/push/ig;->h()Z

    move-result v0

    if-eqz v0, :cond_13b

    iget-boolean v0, p0, Lcom/xiaomi/push/ig;->b:Z

    iget-boolean p1, p1, Lcom/xiaomi/push/ig;->b:Z

    invoke-static {v0, p1}, Lcom/xiaomi/push/jh;->a(ZZ)I

    move-result p1

    if-eqz p1, :cond_13b

    return p1

    :cond_13b
    const/4 p1, 0x0

    return p1
.end method

.method public a()J
    .registers 3

    iget-wide v0, p0, Lcom/xiaomi/push/ig;->a:J

    return-wide v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/ig;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a()V
    .registers 1

    return-void
.end method

.method public a(Lcom/xiaomi/push/jr;)V
    .registers 7

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Lcom/xiaomi/push/jw;

    :goto_3
    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Lcom/xiaomi/push/jo;

    move-result-object v0

    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-nez v1, :cond_12

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->f()V

    invoke-virtual {p0}, Lcom/xiaomi/push/ig;->a()V

    return-void

    :cond_12
    iget-short v1, v0, Lcom/xiaomi/push/jo;->a:S

    const/4 v2, 0x2

    const/16 v3, 0x8

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_88

    :cond_1b
    iget-byte v0, v0, Lcom/xiaomi/push/jo;->a:B

    invoke-static {p1, v0}, Lcom/xiaomi/push/ju;->a(Lcom/xiaomi/push/jr;B)V

    goto :goto_83

    :pswitch_21
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v2, :cond_1b

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/push/ig;->b:Z

    invoke-virtual {p0, v4}, Lcom/xiaomi/push/ig;->f(Z)V

    goto :goto_83

    :pswitch_2f
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1b

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/ig;->a:Ljava/lang/String;

    goto :goto_83

    :pswitch_3c
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1b

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/push/ig;->a:J

    invoke-virtual {p0, v4}, Lcom/xiaomi/push/ig;->e(Z)V

    goto :goto_83

    :pswitch_4c
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v3, :cond_1b

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/push/ig;->c:I

    invoke-virtual {p0, v4}, Lcom/xiaomi/push/ig;->d(Z)V

    goto :goto_83

    :pswitch_5a
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v2, :cond_1b

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/push/ig;->a:Z

    invoke-virtual {p0, v4}, Lcom/xiaomi/push/ig;->c(Z)V

    goto :goto_83

    :pswitch_68
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v3, :cond_1b

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/push/ig;->b:I

    invoke-virtual {p0, v4}, Lcom/xiaomi/push/ig;->b(Z)V

    goto :goto_83

    :pswitch_76
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v3, :cond_1b

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/push/ig;->a:I

    invoke-virtual {p0, v4}, Lcom/xiaomi/push/ig;->a(Z)V

    :goto_83
    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->g()V

    goto/16 :goto_3

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_76
        :pswitch_68
        :pswitch_5a
        :pswitch_4c
        :pswitch_3c
        :pswitch_2f
        :pswitch_21
    .end packed-switch
.end method

.method public a(Z)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/ig;->a:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public a()Z
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/push/ig;->a:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/xiaomi/push/ig;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/push/ig;->a()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ig;->a()Z

    move-result v2

    if-nez v1, :cond_10

    if-eqz v2, :cond_1d

    :cond_10
    if-eqz v1, :cond_b7

    if-nez v2, :cond_16

    goto/16 :goto_b7

    :cond_16
    iget v1, p0, Lcom/xiaomi/push/ig;->a:I

    iget v2, p1, Lcom/xiaomi/push/ig;->a:I

    if-eq v1, v2, :cond_1d

    return v0

    :cond_1d
    invoke-virtual {p0}, Lcom/xiaomi/push/ig;->b()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ig;->b()Z

    move-result v2

    if-nez v1, :cond_29

    if-eqz v2, :cond_36

    :cond_29
    if-eqz v1, :cond_b7

    if-nez v2, :cond_2f

    goto/16 :goto_b7

    :cond_2f
    iget v1, p0, Lcom/xiaomi/push/ig;->b:I

    iget v2, p1, Lcom/xiaomi/push/ig;->b:I

    if-eq v1, v2, :cond_36

    return v0

    :cond_36
    invoke-virtual {p0}, Lcom/xiaomi/push/ig;->c()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ig;->c()Z

    move-result v2

    if-nez v1, :cond_42

    if-eqz v2, :cond_4f

    :cond_42
    if-eqz v1, :cond_b7

    if-nez v2, :cond_48

    goto/16 :goto_b7

    :cond_48
    iget-boolean v1, p0, Lcom/xiaomi/push/ig;->a:Z

    iget-boolean v2, p1, Lcom/xiaomi/push/ig;->a:Z

    if-eq v1, v2, :cond_4f

    return v0

    :cond_4f
    invoke-virtual {p0}, Lcom/xiaomi/push/ig;->d()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ig;->d()Z

    move-result v2

    if-nez v1, :cond_5b

    if-eqz v2, :cond_67

    :cond_5b
    if-eqz v1, :cond_b7

    if-nez v2, :cond_60

    goto :goto_b7

    :cond_60
    iget v1, p0, Lcom/xiaomi/push/ig;->c:I

    iget v2, p1, Lcom/xiaomi/push/ig;->c:I

    if-eq v1, v2, :cond_67

    return v0

    :cond_67
    invoke-virtual {p0}, Lcom/xiaomi/push/ig;->e()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ig;->e()Z

    move-result v2

    if-nez v1, :cond_73

    if-eqz v2, :cond_81

    :cond_73
    if-eqz v1, :cond_b7

    if-nez v2, :cond_78

    goto :goto_b7

    :cond_78
    iget-wide v1, p0, Lcom/xiaomi/push/ig;->a:J

    iget-wide v3, p1, Lcom/xiaomi/push/ig;->a:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_81

    return v0

    :cond_81
    invoke-virtual {p0}, Lcom/xiaomi/push/ig;->f()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ig;->f()Z

    move-result v2

    if-nez v1, :cond_8d

    if-eqz v2, :cond_9d

    :cond_8d
    if-eqz v1, :cond_b7

    if-nez v2, :cond_92

    goto :goto_b7

    :cond_92
    iget-object v1, p0, Lcom/xiaomi/push/ig;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/ig;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9d

    return v0

    :cond_9d
    invoke-virtual {p0}, Lcom/xiaomi/push/ig;->h()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ig;->h()Z

    move-result v2

    if-nez v1, :cond_a9

    if-eqz v2, :cond_b5

    :cond_a9
    if-eqz v1, :cond_b7

    if-nez v2, :cond_ae

    goto :goto_b7

    :cond_ae
    iget-boolean v1, p0, Lcom/xiaomi/push/ig;->b:Z

    iget-boolean p1, p1, Lcom/xiaomi/push/ig;->b:Z

    if-eq v1, p1, :cond_b5

    return v0

    :cond_b5
    const/4 p1, 0x1

    return p1

    :cond_b7
    :goto_b7
    return v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/xiaomi/push/ig;->b:I

    return v0
.end method

.method public b(Lcom/xiaomi/push/jr;)V
    .registers 4

    invoke-virtual {p0}, Lcom/xiaomi/push/ig;->a()V

    sget-object v0, Lcom/xiaomi/push/ig;->a:Lcom/xiaomi/push/jw;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jw;)V

    invoke-virtual {p0}, Lcom/xiaomi/push/ig;->a()Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/xiaomi/push/ig;->a:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget v0, p0, Lcom/xiaomi/push/ig;->a:I

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(I)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_1b
    invoke-virtual {p0}, Lcom/xiaomi/push/ig;->b()Z

    move-result v0

    if-eqz v0, :cond_2e

    sget-object v0, Lcom/xiaomi/push/ig;->b:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget v0, p0, Lcom/xiaomi/push/ig;->b:I

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(I)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_2e
    invoke-virtual {p0}, Lcom/xiaomi/push/ig;->c()Z

    move-result v0

    if-eqz v0, :cond_41

    sget-object v0, Lcom/xiaomi/push/ig;->c:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-boolean v0, p0, Lcom/xiaomi/push/ig;->a:Z

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Z)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_41
    invoke-virtual {p0}, Lcom/xiaomi/push/ig;->d()Z

    move-result v0

    if-eqz v0, :cond_54

    sget-object v0, Lcom/xiaomi/push/ig;->d:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget v0, p0, Lcom/xiaomi/push/ig;->c:I

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(I)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_54
    invoke-virtual {p0}, Lcom/xiaomi/push/ig;->e()Z

    move-result v0

    if-eqz v0, :cond_67

    sget-object v0, Lcom/xiaomi/push/ig;->e:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-wide v0, p0, Lcom/xiaomi/push/ig;->a:J

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/jr;->a(J)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_67
    iget-object v0, p0, Lcom/xiaomi/push/ig;->a:Ljava/lang/String;

    if-eqz v0, :cond_7e

    invoke-virtual {p0}, Lcom/xiaomi/push/ig;->f()Z

    move-result v0

    if-eqz v0, :cond_7e

    sget-object v0, Lcom/xiaomi/push/ig;->f:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/ig;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_7e
    invoke-virtual {p0}, Lcom/xiaomi/push/ig;->h()Z

    move-result v0

    if-eqz v0, :cond_91

    sget-object v0, Lcom/xiaomi/push/ig;->g:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-boolean v0, p0, Lcom/xiaomi/push/ig;->b:Z

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Z)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_91
    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->c()V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()V

    return-void
.end method

.method public b(Z)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/ig;->a:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public b()Z
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/push/ig;->a:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/xiaomi/push/ig;->c:I

    return v0
.end method

.method public c(Z)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/ig;->a:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public c()Z
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/push/ig;->a:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/xiaomi/push/ig;

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/ig;->a(Lcom/xiaomi/push/ig;)I

    move-result p1

    return p1
.end method

.method public d(Z)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/ig;->a:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public d()Z
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/push/ig;->a:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public e(Z)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/ig;->a:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public e()Z
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/push/ig;->a:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/xiaomi/push/ig;

    if-eqz v1, :cond_f

    check-cast p1, Lcom/xiaomi/push/ig;

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/ig;->a(Lcom/xiaomi/push/ig;)Z

    move-result p1

    return p1

    :cond_f
    return v0
.end method

.method public f(Z)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/ig;->a:Ljava/util/BitSet;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public f()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/ig;->a:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public g()Z
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/push/ig;->b:Z

    return v0
.end method

.method public h()Z
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/push/ig;->a:Ljava/util/BitSet;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnlineConfigItem("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/push/ig;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    const-string v1, "key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/push/ig;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x1

    :goto_1b
    invoke-virtual {p0}, Lcom/xiaomi/push/ig;->b()Z

    move-result v3

    const-string v4, ", "

    if-eqz v3, :cond_33

    if-nez v1, :cond_28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_28
    const-string v1, "type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/push/ig;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_33
    invoke-virtual {p0}, Lcom/xiaomi/push/ig;->c()Z

    move-result v3

    if-eqz v3, :cond_49

    if-nez v1, :cond_3e

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3e
    const-string v1, "clear:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaomi/push/ig;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_49
    invoke-virtual {p0}, Lcom/xiaomi/push/ig;->d()Z

    move-result v3

    if-eqz v3, :cond_5f

    if-nez v1, :cond_54

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_54
    const-string v1, "intValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/push/ig;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_5f
    invoke-virtual {p0}, Lcom/xiaomi/push/ig;->e()Z

    move-result v3

    if-eqz v3, :cond_75

    if-nez v1, :cond_6a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6a
    const-string v1, "longValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/xiaomi/push/ig;->a:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_75
    invoke-virtual {p0}, Lcom/xiaomi/push/ig;->f()Z

    move-result v3

    if-eqz v3, :cond_8f

    if-nez v1, :cond_80

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_80
    const-string v1, "stringValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/ig;->a:Ljava/lang/String;

    if-nez v1, :cond_8b

    const-string v1, "null"

    :cond_8b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_8f
    invoke-virtual {p0}, Lcom/xiaomi/push/ig;->h()Z

    move-result v2

    if-eqz v2, :cond_a4

    if-nez v1, :cond_9a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9a
    const-string v1, "boolValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaomi/push/ig;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_a4
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
