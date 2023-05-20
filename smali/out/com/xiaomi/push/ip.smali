.class public Lcom/xiaomi/push/ip;
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
        "Lcom/xiaomi/push/ip;",
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

.field private static final h:Lcom/xiaomi/push/jo;

.field private static final i:Lcom/xiaomi/push/jo;

.field private static final j:Lcom/xiaomi/push/jo;


# instance fields
.field public a:J

.field public a:Lcom/xiaomi/push/ik;

.field public a:Ljava/lang/String;

.field private a:Ljava/util/BitSet;

.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public a:Z

.field public b:Ljava/lang/String;

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/xiaomi/push/jw;

    const-string v1, "XmPushActionCommand"

    invoke-direct {v0, v1}, Lcom/xiaomi/push/jw;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/ip;->a:Lcom/xiaomi/push/jw;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v1, 0xc

    const/4 v2, 0x2

    const-string v3, ""

    invoke-direct {v0, v3, v1, v2}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ip;->a:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v4, 0xb

    const/4 v5, 0x3

    invoke-direct {v0, v3, v4, v5}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ip;->b:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/4 v5, 0x4

    invoke-direct {v0, v3, v4, v5}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ip;->c:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/4 v5, 0x5

    invoke-direct {v0, v3, v4, v5}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ip;->d:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v5, 0xf

    const/4 v6, 0x6

    invoke-direct {v0, v3, v5, v6}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ip;->e:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/4 v5, 0x7

    invoke-direct {v0, v3, v4, v5}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ip;->f:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v5, 0x9

    invoke-direct {v0, v3, v4, v5}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ip;->g:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v5, 0xa

    invoke-direct {v0, v3, v2, v5}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ip;->h:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    invoke-direct {v0, v3, v2, v4}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ip;->i:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    invoke-direct {v0, v3, v5, v1}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ip;->j:Lcom/xiaomi/push/jo;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/push/ip;->a:Ljava/util/BitSet;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/push/ip;->a:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/ip;->b:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/push/ip;)I
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
    invoke-virtual {p0}, Lcom/xiaomi/push/ip;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ip;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_3a

    return v0

    :cond_3a
    invoke-virtual {p0}, Lcom/xiaomi/push/ip;->a()Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/xiaomi/push/ip;->a:Lcom/xiaomi/push/ik;

    iget-object v1, p1, Lcom/xiaomi/push/ip;->a:Lcom/xiaomi/push/ik;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_4b

    return v0

    :cond_4b
    invoke-virtual {p0}, Lcom/xiaomi/push/ip;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ip;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_62

    return v0

    :cond_62
    invoke-virtual {p0}, Lcom/xiaomi/push/ip;->b()Z

    move-result v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/xiaomi/push/ip;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/ip;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_73

    return v0

    :cond_73
    invoke-virtual {p0}, Lcom/xiaomi/push/ip;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ip;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_8a

    return v0

    :cond_8a
    invoke-virtual {p0}, Lcom/xiaomi/push/ip;->c()Z

    move-result v0

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/xiaomi/push/ip;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/ip;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_9b

    return v0

    :cond_9b
    invoke-virtual {p0}, Lcom/xiaomi/push/ip;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ip;->d()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_b2

    return v0

    :cond_b2
    invoke-virtual {p0}, Lcom/xiaomi/push/ip;->d()Z

    move-result v0

    if-eqz v0, :cond_c3

    iget-object v0, p0, Lcom/xiaomi/push/ip;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/ip;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_c3

    return v0

    :cond_c3
    invoke-virtual {p0}, Lcom/xiaomi/push/ip;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ip;->e()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_da

    return v0

    :cond_da
    invoke-virtual {p0}, Lcom/xiaomi/push/ip;->e()Z

    move-result v0

    if-eqz v0, :cond_eb

    iget-object v0, p0, Lcom/xiaomi/push/ip;->a:Ljava/util/List;

    iget-object v1, p1, Lcom/xiaomi/push/ip;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    if-eqz v0, :cond_eb

    return v0

    :cond_eb
    invoke-virtual {p0}, Lcom/xiaomi/push/ip;->f()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ip;->f()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_102

    return v0

    :cond_102
    invoke-virtual {p0}, Lcom/xiaomi/push/ip;->f()Z

    move-result v0

    if-eqz v0, :cond_113

    iget-object v0, p0, Lcom/xiaomi/push/ip;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/ip;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_113

    return v0

    :cond_113
    invoke-virtual {p0}, Lcom/xiaomi/push/ip;->g()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ip;->g()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_12a

    return v0

    :cond_12a
    invoke-virtual {p0}, Lcom/xiaomi/push/ip;->g()Z

    move-result v0

    if-eqz v0, :cond_13b

    iget-object v0, p0, Lcom/xiaomi/push/ip;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/ip;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_13b

    return v0

    :cond_13b
    invoke-virtual {p0}, Lcom/xiaomi/push/ip;->h()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ip;->h()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_152

    return v0

    :cond_152
    invoke-virtual {p0}, Lcom/xiaomi/push/ip;->h()Z

    move-result v0

    if-eqz v0, :cond_163

    iget-boolean v0, p0, Lcom/xiaomi/push/ip;->a:Z

    iget-boolean v1, p1, Lcom/xiaomi/push/ip;->a:Z

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(ZZ)I

    move-result v0

    if-eqz v0, :cond_163

    return v0

    :cond_163
    invoke-virtual {p0}, Lcom/xiaomi/push/ip;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ip;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_17a

    return v0

    :cond_17a
    invoke-virtual {p0}, Lcom/xiaomi/push/ip;->i()Z

    move-result v0

    if-eqz v0, :cond_18b

    iget-boolean v0, p0, Lcom/xiaomi/push/ip;->b:Z

    iget-boolean v1, p1, Lcom/xiaomi/push/ip;->b:Z

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(ZZ)I

    move-result v0

    if-eqz v0, :cond_18b

    return v0

    :cond_18b
    invoke-virtual {p0}, Lcom/xiaomi/push/ip;->j()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ip;->j()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1a2

    return v0

    :cond_1a2
    invoke-virtual {p0}, Lcom/xiaomi/push/ip;->j()Z

    move-result v0

    if-eqz v0, :cond_1b3

    iget-wide v0, p0, Lcom/xiaomi/push/ip;->a:J

    iget-wide v2, p1, Lcom/xiaomi/push/ip;->a:J

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/push/jh;->a(JJ)I

    move-result p1

    if-eqz p1, :cond_1b3

    return p1

    :cond_1b3
    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/lang/String;)Lcom/xiaomi/push/ip;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/push/ip;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/ip;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a()V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/ip;->a:Ljava/lang/String;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/xiaomi/push/ip;->b:Ljava/lang/String;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/xiaomi/push/ip;->c:Ljava/lang/String;

    if-eqz v0, :cond_d

    return-void

    :cond_d
    new-instance v0, Lcom/xiaomi/push/js;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'cmdName\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/push/ip;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/push/js;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    new-instance v0, Lcom/xiaomi/push/js;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'appId\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/push/ip;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/push/js;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_43
    new-instance v0, Lcom/xiaomi/push/js;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/push/ip;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/push/js;-><init>(Ljava/lang/String;)V

    throw v0
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

    invoke-virtual {p0}, Lcom/xiaomi/push/ip;->a()V

    return-void

    :cond_12
    iget-short v1, v0, Lcom/xiaomi/push/jo;->a:S

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v4, 0xb

    packed-switch v1, :pswitch_data_c8

    :cond_1b
    :pswitch_1b
    iget-byte v0, v0, Lcom/xiaomi/push/jo;->a:B

    invoke-static {p1, v0}, Lcom/xiaomi/push/ju;->a(Lcom/xiaomi/push/jr;B)V

    goto/16 :goto_c2

    :pswitch_22
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1b

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/push/ip;->a:J

    invoke-virtual {p0, v3}, Lcom/xiaomi/push/ip;->c(Z)V

    goto/16 :goto_c2

    :pswitch_33
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v2, :cond_1b

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/push/ip;->b:Z

    invoke-virtual {p0, v3}, Lcom/xiaomi/push/ip;->b(Z)V

    goto/16 :goto_c2

    :pswitch_42
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v2, :cond_1b

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/push/ip;->a:Z

    invoke-virtual {p0, v3}, Lcom/xiaomi/push/ip;->a(Z)V

    goto/16 :goto_c2

    :pswitch_51
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v4, :cond_1b

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/ip;->e:Ljava/lang/String;

    goto :goto_c2

    :pswitch_5c
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v4, :cond_1b

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/ip;->d:Ljava/lang/String;

    goto :goto_c2

    :pswitch_67
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    const/16 v2, 0xf

    if-ne v1, v2, :cond_1b

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Lcom/xiaomi/push/jp;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget v2, v0, Lcom/xiaomi/push/jp;->a:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/xiaomi/push/ip;->a:Ljava/util/List;

    const/4 v1, 0x0

    :goto_7b
    iget v2, v0, Lcom/xiaomi/push/jp;->a:I

    if-ge v1, v2, :cond_8b

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/push/ip;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_7b

    :cond_8b
    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->i()V

    goto :goto_c2

    :pswitch_8f
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v4, :cond_1b

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/ip;->c:Ljava/lang/String;

    goto :goto_c2

    :pswitch_9a
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v4, :cond_1b

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/ip;->b:Ljava/lang/String;

    goto :goto_c2

    :pswitch_a5
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v4, :cond_1b

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/ip;->a:Ljava/lang/String;

    goto :goto_c2

    :pswitch_b0
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1b

    new-instance v0, Lcom/xiaomi/push/ik;

    invoke-direct {v0}, Lcom/xiaomi/push/ik;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/ip;->a:Lcom/xiaomi/push/ik;

    iget-object v0, p0, Lcom/xiaomi/push/ip;->a:Lcom/xiaomi/push/ik;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/ik;->a(Lcom/xiaomi/push/jr;)V

    :goto_c2
    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->g()V

    goto/16 :goto_3

    nop

    :pswitch_data_c8
    .packed-switch 0x2
        :pswitch_b0
        :pswitch_a5
        :pswitch_9a
        :pswitch_8f
        :pswitch_67
        :pswitch_5c
        :pswitch_1b
        :pswitch_51
        :pswitch_42
        :pswitch_33
        :pswitch_22
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/push/ip;->a:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/ip;->a:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Lcom/xiaomi/push/ip;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Z)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/ip;->a:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public a()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/ip;->a:Lcom/xiaomi/push/ik;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public a(Lcom/xiaomi/push/ip;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/push/ip;->a()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ip;->a()Z

    move-result v2

    if-nez v1, :cond_10

    if-eqz v2, :cond_21

    :cond_10
    if-eqz v1, :cond_11a

    if-nez v2, :cond_16

    goto/16 :goto_11a

    :cond_16
    iget-object v1, p0, Lcom/xiaomi/push/ip;->a:Lcom/xiaomi/push/ik;

    iget-object v2, p1, Lcom/xiaomi/push/ip;->a:Lcom/xiaomi/push/ik;

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/ik;->a(Lcom/xiaomi/push/ik;)Z

    move-result v1

    if-nez v1, :cond_21

    return v0

    :cond_21
    invoke-virtual {p0}, Lcom/xiaomi/push/ip;->b()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ip;->b()Z

    move-result v2

    if-nez v1, :cond_2d

    if-eqz v2, :cond_3e

    :cond_2d
    if-eqz v1, :cond_11a

    if-nez v2, :cond_33

    goto/16 :goto_11a

    :cond_33
    iget-object v1, p0, Lcom/xiaomi/push/ip;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/ip;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    return v0

    :cond_3e
    invoke-virtual {p0}, Lcom/xiaomi/push/ip;->c()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ip;->c()Z

    move-result v2

    if-nez v1, :cond_4a

    if-eqz v2, :cond_5b

    :cond_4a
    if-eqz v1, :cond_11a

    if-nez v2, :cond_50

    goto/16 :goto_11a

    :cond_50
    iget-object v1, p0, Lcom/xiaomi/push/ip;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/ip;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5b

    return v0

    :cond_5b
    invoke-virtual {p0}, Lcom/xiaomi/push/ip;->d()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ip;->d()Z

    move-result v2

    if-nez v1, :cond_67

    if-eqz v2, :cond_78

    :cond_67
    if-eqz v1, :cond_11a

    if-nez v2, :cond_6d

    goto/16 :goto_11a

    :cond_6d
    iget-object v1, p0, Lcom/xiaomi/push/ip;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/ip;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    return v0

    :cond_78
    invoke-virtual {p0}, Lcom/xiaomi/push/ip;->e()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ip;->e()Z

    move-result v2

    if-nez v1, :cond_84

    if-eqz v2, :cond_95

    :cond_84
    if-eqz v1, :cond_11a

    if-nez v2, :cond_8a

    goto/16 :goto_11a

    :cond_8a
    iget-object v1, p0, Lcom/xiaomi/push/ip;->a:Ljava/util/List;

    iget-object v2, p1, Lcom/xiaomi/push/ip;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_95

    return v0

    :cond_95
    invoke-virtual {p0}, Lcom/xiaomi/push/ip;->f()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ip;->f()Z

    move-result v2

    if-nez v1, :cond_a1

    if-eqz v2, :cond_b2

    :cond_a1
    if-eqz v1, :cond_11a

    if-nez v2, :cond_a7

    goto/16 :goto_11a

    :cond_a7
    iget-object v1, p0, Lcom/xiaomi/push/ip;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/ip;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b2

    return v0

    :cond_b2
    invoke-virtual {p0}, Lcom/xiaomi/push/ip;->g()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ip;->g()Z

    move-result v2

    if-nez v1, :cond_be

    if-eqz v2, :cond_ce

    :cond_be
    if-eqz v1, :cond_11a

    if-nez v2, :cond_c3

    goto :goto_11a

    :cond_c3
    iget-object v1, p0, Lcom/xiaomi/push/ip;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/ip;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ce

    return v0

    :cond_ce
    invoke-virtual {p0}, Lcom/xiaomi/push/ip;->h()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ip;->h()Z

    move-result v2

    if-nez v1, :cond_da

    if-eqz v2, :cond_e6

    :cond_da
    if-eqz v1, :cond_11a

    if-nez v2, :cond_df

    goto :goto_11a

    :cond_df
    iget-boolean v1, p0, Lcom/xiaomi/push/ip;->a:Z

    iget-boolean v2, p1, Lcom/xiaomi/push/ip;->a:Z

    if-eq v1, v2, :cond_e6

    return v0

    :cond_e6
    invoke-virtual {p0}, Lcom/xiaomi/push/ip;->i()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ip;->i()Z

    move-result v2

    if-nez v1, :cond_f2

    if-eqz v2, :cond_fe

    :cond_f2
    if-eqz v1, :cond_11a

    if-nez v2, :cond_f7

    goto :goto_11a

    :cond_f7
    iget-boolean v1, p0, Lcom/xiaomi/push/ip;->b:Z

    iget-boolean v2, p1, Lcom/xiaomi/push/ip;->b:Z

    if-eq v1, v2, :cond_fe

    return v0

    :cond_fe
    invoke-virtual {p0}, Lcom/xiaomi/push/ip;->j()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ip;->j()Z

    move-result v2

    if-nez v1, :cond_10a

    if-eqz v2, :cond_118

    :cond_10a
    if-eqz v1, :cond_11a

    if-nez v2, :cond_10f

    goto :goto_11a

    :cond_10f
    iget-wide v1, p0, Lcom/xiaomi/push/ip;->a:J

    iget-wide v3, p1, Lcom/xiaomi/push/ip;->a:J

    cmp-long p1, v1, v3

    if-eqz p1, :cond_118

    return v0

    :cond_118
    const/4 p1, 0x1

    return p1

    :cond_11a
    :goto_11a
    return v0
.end method

.method public b(Ljava/lang/String;)Lcom/xiaomi/push/ip;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/push/ip;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b(Lcom/xiaomi/push/jr;)V
    .registers 5

    invoke-virtual {p0}, Lcom/xiaomi/push/ip;->a()V

    sget-object v0, Lcom/xiaomi/push/ip;->a:Lcom/xiaomi/push/jw;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jw;)V

    iget-object v0, p0, Lcom/xiaomi/push/ip;->a:Lcom/xiaomi/push/ik;

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/xiaomi/push/ip;->a()Z

    move-result v0

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/xiaomi/push/ip;->a:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/ip;->a:Lcom/xiaomi/push/ik;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/ik;->b(Lcom/xiaomi/push/jr;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_1f
    iget-object v0, p0, Lcom/xiaomi/push/ip;->a:Ljava/lang/String;

    if-eqz v0, :cond_30

    sget-object v0, Lcom/xiaomi/push/ip;->b:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/ip;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_30
    iget-object v0, p0, Lcom/xiaomi/push/ip;->b:Ljava/lang/String;

    if-eqz v0, :cond_41

    sget-object v0, Lcom/xiaomi/push/ip;->c:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/ip;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_41
    iget-object v0, p0, Lcom/xiaomi/push/ip;->c:Ljava/lang/String;

    if-eqz v0, :cond_52

    sget-object v0, Lcom/xiaomi/push/ip;->d:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/ip;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_52
    iget-object v0, p0, Lcom/xiaomi/push/ip;->a:Ljava/util/List;

    if-eqz v0, :cond_8d

    invoke-virtual {p0}, Lcom/xiaomi/push/ip;->e()Z

    move-result v0

    if-eqz v0, :cond_8d

    sget-object v0, Lcom/xiaomi/push/ip;->e:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    new-instance v0, Lcom/xiaomi/push/jp;

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/xiaomi/push/ip;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/push/jp;-><init>(BI)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jp;)V

    iget-object v0, p0, Lcom/xiaomi/push/ip;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_77
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_87

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    goto :goto_77

    :cond_87
    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->e()V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_8d
    iget-object v0, p0, Lcom/xiaomi/push/ip;->d:Ljava/lang/String;

    if-eqz v0, :cond_a4

    invoke-virtual {p0}, Lcom/xiaomi/push/ip;->f()Z

    move-result v0

    if-eqz v0, :cond_a4

    sget-object v0, Lcom/xiaomi/push/ip;->f:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/ip;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_a4
    iget-object v0, p0, Lcom/xiaomi/push/ip;->e:Ljava/lang/String;

    if-eqz v0, :cond_bb

    invoke-virtual {p0}, Lcom/xiaomi/push/ip;->g()Z

    move-result v0

    if-eqz v0, :cond_bb

    sget-object v0, Lcom/xiaomi/push/ip;->g:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/ip;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_bb
    invoke-virtual {p0}, Lcom/xiaomi/push/ip;->h()Z

    move-result v0

    if-eqz v0, :cond_ce

    sget-object v0, Lcom/xiaomi/push/ip;->h:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-boolean v0, p0, Lcom/xiaomi/push/ip;->a:Z

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Z)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_ce
    invoke-virtual {p0}, Lcom/xiaomi/push/ip;->i()Z

    move-result v0

    if-eqz v0, :cond_e1

    sget-object v0, Lcom/xiaomi/push/ip;->i:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-boolean v0, p0, Lcom/xiaomi/push/ip;->b:Z

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Z)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_e1
    invoke-virtual {p0}, Lcom/xiaomi/push/ip;->j()Z

    move-result v0

    if-eqz v0, :cond_f4

    sget-object v0, Lcom/xiaomi/push/ip;->j:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-wide v0, p0, Lcom/xiaomi/push/ip;->a:J

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/jr;->a(J)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_f4
    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->c()V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()V

    return-void
.end method

.method public b(Z)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/ip;->a:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/ip;->a:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public c(Ljava/lang/String;)Lcom/xiaomi/push/ip;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/push/ip;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c(Z)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/ip;->a:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public c()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/ip;->b:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/xiaomi/push/ip;

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/ip;->a(Lcom/xiaomi/push/ip;)I

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/String;)Lcom/xiaomi/push/ip;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/push/ip;->d:Ljava/lang/String;

    return-object p0
.end method

.method public d()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/ip;->c:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public e(Ljava/lang/String;)Lcom/xiaomi/push/ip;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/push/ip;->e:Ljava/lang/String;

    return-object p0
.end method

.method public e()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/ip;->a:Ljava/util/List;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/xiaomi/push/ip;

    if-eqz v1, :cond_f

    check-cast p1, Lcom/xiaomi/push/ip;

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/ip;->a(Lcom/xiaomi/push/ip;)Z

    move-result p1

    return p1

    :cond_f
    return v0
.end method

.method public f()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/ip;->d:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/xiaomi/push/ip;->e:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public h()Z
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/push/ip;->a:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public i()Z
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/push/ip;->a:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public j()Z
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/push/ip;->a:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "XmPushActionCommand("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/push/ip;->a()Z

    move-result v1

    const-string v2, "null"

    if-eqz v1, :cond_21

    const-string v1, "target:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/ip;->a:Lcom/xiaomi/push/ik;

    if-nez v1, :cond_1c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    :cond_1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1f
    const/4 v1, 0x0

    goto :goto_22

    :cond_21
    const/4 v1, 0x1

    :goto_22
    const-string v3, ", "

    if-nez v1, :cond_29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_29
    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/ip;->a:Ljava/lang/String;

    if-nez v1, :cond_36

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_39

    :cond_36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_39
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "appId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/ip;->b:Ljava/lang/String;

    if-nez v1, :cond_49

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4c

    :cond_49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "cmdName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/ip;->c:Ljava/lang/String;

    if-nez v1, :cond_5c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5f

    :cond_5c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5f
    invoke-virtual {p0}, Lcom/xiaomi/push/ip;->e()Z

    move-result v1

    if-eqz v1, :cond_78

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "cmdArgs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/ip;->a:Ljava/util/List;

    if-nez v1, :cond_75

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_78

    :cond_75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_78
    :goto_78
    invoke-virtual {p0}, Lcom/xiaomi/push/ip;->f()Z

    move-result v1

    if-eqz v1, :cond_91

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "packageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/ip;->d:Ljava/lang/String;

    if-nez v1, :cond_8e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_91

    :cond_8e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_91
    :goto_91
    invoke-virtual {p0}, Lcom/xiaomi/push/ip;->g()Z

    move-result v1

    if-eqz v1, :cond_aa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "category:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/ip;->e:Ljava/lang/String;

    if-nez v1, :cond_a7

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_aa

    :cond_a7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_aa
    :goto_aa
    invoke-virtual {p0}, Lcom/xiaomi/push/ip;->h()Z

    move-result v1

    if-eqz v1, :cond_bd

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "updateCache:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaomi/push/ip;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_bd
    invoke-virtual {p0}, Lcom/xiaomi/push/ip;->i()Z

    move-result v1

    if-eqz v1, :cond_d0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "response2Client:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaomi/push/ip;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_d0
    invoke-virtual {p0}, Lcom/xiaomi/push/ip;->j()Z

    move-result v1

    if-eqz v1, :cond_e3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "createdTs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/push/ip;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_e3
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
