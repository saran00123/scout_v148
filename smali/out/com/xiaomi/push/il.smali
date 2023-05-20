.class public Lcom/xiaomi/push/il;
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
        "Lcom/xiaomi/push/il;",
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

.field private static final k:Lcom/xiaomi/push/jo;

.field private static final l:Lcom/xiaomi/push/jo;

.field private static final m:Lcom/xiaomi/push/jo;

.field private static final n:Lcom/xiaomi/push/jo;

.field private static final o:Lcom/xiaomi/push/jo;

.field private static final p:Lcom/xiaomi/push/jo;

.field private static final q:Lcom/xiaomi/push/jo;

.field private static final r:Lcom/xiaomi/push/jo;

.field private static final s:Lcom/xiaomi/push/jo;

.field private static final t:Lcom/xiaomi/push/jo;


# instance fields
.field public a:I

.field public a:J

.field public a:Lcom/xiaomi/push/ik;

.field public a:Lcom/xiaomi/push/iy;

.field public a:Ljava/lang/String;

.field private a:Ljava/util/BitSet;

.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public a:S

.field public a:Z

.field public b:Ljava/lang/String;

.field public b:S

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/xiaomi/push/jw;

    const-string v1, "XmPushActionAckMessage"

    invoke-direct {v0, v1}, Lcom/xiaomi/push/jw;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/il;->a:Lcom/xiaomi/push/jw;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v1, 0xb

    const-string v2, ""

    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/il;->a:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/4 v3, 0x2

    const/16 v4, 0xc

    invoke-direct {v0, v2, v4, v3}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/il;->b:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/4 v5, 0x3

    invoke-direct {v0, v2, v1, v5}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/il;->c:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/4 v5, 0x4

    invoke-direct {v0, v2, v1, v5}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/il;->d:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v5, 0xa

    const/4 v6, 0x5

    invoke-direct {v0, v2, v5, v6}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/il;->e:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/4 v6, 0x6

    invoke-direct {v0, v2, v1, v6}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/il;->f:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/4 v7, 0x7

    invoke-direct {v0, v2, v1, v7}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/il;->g:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v7, 0x8

    invoke-direct {v0, v2, v4, v7}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/il;->h:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v8, 0x9

    invoke-direct {v0, v2, v1, v8}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/il;->i:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    invoke-direct {v0, v2, v1, v5}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/il;->j:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    invoke-direct {v0, v2, v3, v1}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/il;->k:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    invoke-direct {v0, v2, v1, v4}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/il;->l:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v3, 0xd

    invoke-direct {v0, v2, v1, v3}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/il;->m:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v4, 0xe

    invoke-direct {v0, v2, v1, v4}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/il;->n:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v4, 0xf

    invoke-direct {v0, v2, v6, v4}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/il;->o:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v4, 0x10

    invoke-direct {v0, v2, v6, v4}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/il;->p:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v4, 0x14

    invoke-direct {v0, v2, v1, v4}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/il;->q:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v4, 0x15

    invoke-direct {v0, v2, v1, v4}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/il;->r:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v1, 0x16

    invoke-direct {v0, v2, v7, v1}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/il;->s:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v1, 0x17

    invoke-direct {v0, v2, v3, v1}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/il;->t:Lcom/xiaomi/push/jo;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/push/il;->a:Ljava/util/BitSet;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/push/il;->a:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/push/il;)I
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
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/il;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_3a

    return v0

    :cond_3a
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->a()Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/xiaomi/push/il;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/il;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4b

    return v0

    :cond_4b
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/il;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_62

    return v0

    :cond_62
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->b()Z

    move-result v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/xiaomi/push/il;->a:Lcom/xiaomi/push/ik;

    iget-object v1, p1, Lcom/xiaomi/push/il;->a:Lcom/xiaomi/push/ik;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_73

    return v0

    :cond_73
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/il;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_8a

    return v0

    :cond_8a
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->c()Z

    move-result v0

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/xiaomi/push/il;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/il;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_9b

    return v0

    :cond_9b
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/il;->d()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_b2

    return v0

    :cond_b2
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->d()Z

    move-result v0

    if-eqz v0, :cond_c3

    iget-object v0, p0, Lcom/xiaomi/push/il;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/il;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_c3

    return v0

    :cond_c3
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/il;->e()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_da

    return v0

    :cond_da
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->e()Z

    move-result v0

    if-eqz v0, :cond_eb

    iget-wide v0, p0, Lcom/xiaomi/push/il;->a:J

    iget-wide v2, p1, Lcom/xiaomi/push/il;->a:J

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/push/jh;->a(JJ)I

    move-result v0

    if-eqz v0, :cond_eb

    return v0

    :cond_eb
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->f()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/il;->f()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_102

    return v0

    :cond_102
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->f()Z

    move-result v0

    if-eqz v0, :cond_113

    iget-object v0, p0, Lcom/xiaomi/push/il;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/il;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_113

    return v0

    :cond_113
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->g()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/il;->g()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_12a

    return v0

    :cond_12a
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->g()Z

    move-result v0

    if-eqz v0, :cond_13b

    iget-object v0, p0, Lcom/xiaomi/push/il;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/il;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_13b

    return v0

    :cond_13b
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->h()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/il;->h()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_152

    return v0

    :cond_152
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->h()Z

    move-result v0

    if-eqz v0, :cond_163

    iget-object v0, p0, Lcom/xiaomi/push/il;->a:Lcom/xiaomi/push/iy;

    iget-object v1, p1, Lcom/xiaomi/push/il;->a:Lcom/xiaomi/push/iy;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_163

    return v0

    :cond_163
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/il;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_17a

    return v0

    :cond_17a
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->i()Z

    move-result v0

    if-eqz v0, :cond_18b

    iget-object v0, p0, Lcom/xiaomi/push/il;->f:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/il;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_18b

    return v0

    :cond_18b
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->j()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/il;->j()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1a2

    return v0

    :cond_1a2
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->j()Z

    move-result v0

    if-eqz v0, :cond_1b3

    iget-object v0, p0, Lcom/xiaomi/push/il;->g:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/il;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1b3

    return v0

    :cond_1b3
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->k()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/il;->k()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1ca

    return v0

    :cond_1ca
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->k()Z

    move-result v0

    if-eqz v0, :cond_1db

    iget-boolean v0, p0, Lcom/xiaomi/push/il;->a:Z

    iget-boolean v1, p1, Lcom/xiaomi/push/il;->a:Z

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(ZZ)I

    move-result v0

    if-eqz v0, :cond_1db

    return v0

    :cond_1db
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->l()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/il;->l()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1f2

    return v0

    :cond_1f2
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->l()Z

    move-result v0

    if-eqz v0, :cond_203

    iget-object v0, p0, Lcom/xiaomi/push/il;->h:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/il;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_203

    return v0

    :cond_203
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->m()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/il;->m()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_21a

    return v0

    :cond_21a
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->m()Z

    move-result v0

    if-eqz v0, :cond_22b

    iget-object v0, p0, Lcom/xiaomi/push/il;->i:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/il;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_22b

    return v0

    :cond_22b
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->n()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/il;->n()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_242

    return v0

    :cond_242
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->n()Z

    move-result v0

    if-eqz v0, :cond_253

    iget-object v0, p0, Lcom/xiaomi/push/il;->j:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/il;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_253

    return v0

    :cond_253
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->o()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/il;->o()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_26a

    return v0

    :cond_26a
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->o()Z

    move-result v0

    if-eqz v0, :cond_27b

    iget-short v0, p0, Lcom/xiaomi/push/il;->a:S

    iget-short v1, p1, Lcom/xiaomi/push/il;->a:S

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(SS)I

    move-result v0

    if-eqz v0, :cond_27b

    return v0

    :cond_27b
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->p()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/il;->p()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_292

    return v0

    :cond_292
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->p()Z

    move-result v0

    if-eqz v0, :cond_2a3

    iget-short v0, p0, Lcom/xiaomi/push/il;->b:S

    iget-short v1, p1, Lcom/xiaomi/push/il;->b:S

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(SS)I

    move-result v0

    if-eqz v0, :cond_2a3

    return v0

    :cond_2a3
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->q()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/il;->q()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_2ba

    return v0

    :cond_2ba
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->q()Z

    move-result v0

    if-eqz v0, :cond_2cb

    iget-object v0, p0, Lcom/xiaomi/push/il;->k:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/il;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2cb

    return v0

    :cond_2cb
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->r()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/il;->r()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_2e2

    return v0

    :cond_2e2
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->r()Z

    move-result v0

    if-eqz v0, :cond_2f3

    iget-object v0, p0, Lcom/xiaomi/push/il;->l:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/il;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2f3

    return v0

    :cond_2f3
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->s()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/il;->s()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_30a

    return v0

    :cond_30a
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->s()Z

    move-result v0

    if-eqz v0, :cond_31b

    iget v0, p0, Lcom/xiaomi/push/il;->a:I

    iget v1, p1, Lcom/xiaomi/push/il;->a:I

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(II)I

    move-result v0

    if-eqz v0, :cond_31b

    return v0

    :cond_31b
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->t()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/il;->t()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_332

    return v0

    :cond_332
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->t()Z

    move-result v0

    if-eqz v0, :cond_343

    iget-object v0, p0, Lcom/xiaomi/push/il;->a:Ljava/util/Map;

    iget-object p1, p1, Lcom/xiaomi/push/il;->a:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/xiaomi/push/jh;->a(Ljava/util/Map;Ljava/util/Map;)I

    move-result p1

    if-eqz p1, :cond_343

    return p1

    :cond_343
    const/4 p1, 0x0

    return p1
.end method

.method public a(J)Lcom/xiaomi/push/il;
    .registers 3

    iput-wide p1, p0, Lcom/xiaomi/push/il;->a:J

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/il;->a(Z)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/xiaomi/push/il;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/push/il;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a(S)Lcom/xiaomi/push/il;
    .registers 2

    iput-short p1, p0, Lcom/xiaomi/push/il;->a:S

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/il;->c(Z)V

    return-object p0
.end method

.method public a()V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/il;->b:Ljava/lang/String;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/xiaomi/push/il;->c:Ljava/lang/String;

    if-eqz v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Lcom/xiaomi/push/js;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'appId\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/push/il;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/push/js;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    new-instance v0, Lcom/xiaomi/push/js;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/push/il;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/push/js;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/xiaomi/push/jr;)V
    .registers 9

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Lcom/xiaomi/push/jw;

    :goto_3
    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Lcom/xiaomi/push/jo;

    move-result-object v0

    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-nez v1, :cond_33

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->f()V

    invoke-virtual {p0}, Lcom/xiaomi/push/il;->e()Z

    move-result p1

    if-eqz p1, :cond_18

    invoke-virtual {p0}, Lcom/xiaomi/push/il;->a()V

    return-void

    :cond_18
    new-instance p1, Lcom/xiaomi/push/js;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Required field \'messageTs\' was not found in serialized data! Struct: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/push/il;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/xiaomi/push/js;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_33
    iget-short v1, v0, Lcom/xiaomi/push/jo;->a:S

    const/4 v2, 0x6

    const/4 v3, 0x2

    const/16 v4, 0xc

    const/4 v5, 0x1

    const/16 v6, 0xb

    packed-switch v1, :pswitch_data_174

    :cond_3f
    :pswitch_3f
    iget-byte v0, v0, Lcom/xiaomi/push/jo;->a:B

    invoke-static {p1, v0}, Lcom/xiaomi/push/ju;->a(Lcom/xiaomi/push/jr;B)V

    goto/16 :goto_16e

    :pswitch_46
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    const/16 v2, 0xd

    if-ne v1, v2, :cond_3f

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Lcom/xiaomi/push/jq;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    iget v2, v0, Lcom/xiaomi/push/jq;->a:I

    mul-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/xiaomi/push/il;->a:Ljava/util/Map;

    const/4 v1, 0x0

    :goto_5b
    iget v2, v0, Lcom/xiaomi/push/jq;->a:I

    if-ge v1, v2, :cond_6f

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/push/il;->a:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5b

    :cond_6f
    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->h()V

    goto/16 :goto_16e

    :pswitch_74
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3f

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/push/il;->a:I

    invoke-virtual {p0, v5}, Lcom/xiaomi/push/il;->e(Z)V

    goto/16 :goto_16e

    :pswitch_85
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v6, :cond_3f

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/il;->l:Ljava/lang/String;

    goto/16 :goto_16e

    :pswitch_91
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v6, :cond_3f

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/il;->k:Ljava/lang/String;

    goto/16 :goto_16e

    :pswitch_9d
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v2, :cond_3f

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()S

    move-result v0

    iput-short v0, p0, Lcom/xiaomi/push/il;->b:S

    invoke-virtual {p0, v5}, Lcom/xiaomi/push/il;->d(Z)V

    goto/16 :goto_16e

    :pswitch_ac
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v2, :cond_3f

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()S

    move-result v0

    iput-short v0, p0, Lcom/xiaomi/push/il;->a:S

    invoke-virtual {p0, v5}, Lcom/xiaomi/push/il;->c(Z)V

    goto/16 :goto_16e

    :pswitch_bb
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v6, :cond_3f

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/il;->j:Ljava/lang/String;

    goto/16 :goto_16e

    :pswitch_c7
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v6, :cond_3f

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/il;->i:Ljava/lang/String;

    goto/16 :goto_16e

    :pswitch_d3
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v6, :cond_3f

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/il;->h:Ljava/lang/String;

    goto/16 :goto_16e

    :pswitch_df
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v3, :cond_3f

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/push/il;->a:Z

    invoke-virtual {p0, v5}, Lcom/xiaomi/push/il;->b(Z)V

    goto/16 :goto_16e

    :pswitch_ee
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v6, :cond_3f

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/il;->g:Ljava/lang/String;

    goto/16 :goto_16e

    :pswitch_fa
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v6, :cond_3f

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/il;->f:Ljava/lang/String;

    goto/16 :goto_16e

    :pswitch_106
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v4, :cond_3f

    new-instance v0, Lcom/xiaomi/push/iy;

    invoke-direct {v0}, Lcom/xiaomi/push/iy;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/il;->a:Lcom/xiaomi/push/iy;

    iget-object v0, p0, Lcom/xiaomi/push/il;->a:Lcom/xiaomi/push/iy;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/iy;->a(Lcom/xiaomi/push/jr;)V

    goto :goto_16e

    :pswitch_117
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v6, :cond_3f

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/il;->e:Ljava/lang/String;

    goto :goto_16e

    :pswitch_122
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v6, :cond_3f

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/il;->d:Ljava/lang/String;

    goto :goto_16e

    :pswitch_12d
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3f

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/push/il;->a:J

    invoke-virtual {p0, v5}, Lcom/xiaomi/push/il;->a(Z)V

    goto :goto_16e

    :pswitch_13d
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v6, :cond_3f

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/il;->c:Ljava/lang/String;

    goto :goto_16e

    :pswitch_148
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v6, :cond_3f

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/il;->b:Ljava/lang/String;

    goto :goto_16e

    :pswitch_153
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v4, :cond_3f

    new-instance v0, Lcom/xiaomi/push/ik;

    invoke-direct {v0}, Lcom/xiaomi/push/ik;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/il;->a:Lcom/xiaomi/push/ik;

    iget-object v0, p0, Lcom/xiaomi/push/il;->a:Lcom/xiaomi/push/ik;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/ik;->a(Lcom/xiaomi/push/jr;)V

    goto :goto_16e

    :pswitch_164
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v6, :cond_3f

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/il;->a:Ljava/lang/String;

    :goto_16e
    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->g()V

    goto/16 :goto_3

    nop

    :pswitch_data_174
    .packed-switch 0x1
        :pswitch_164
        :pswitch_153
        :pswitch_148
        :pswitch_13d
        :pswitch_12d
        :pswitch_122
        :pswitch_117
        :pswitch_106
        :pswitch_fa
        :pswitch_ee
        :pswitch_df
        :pswitch_d3
        :pswitch_c7
        :pswitch_bb
        :pswitch_ac
        :pswitch_9d
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_91
        :pswitch_85
        :pswitch_74
        :pswitch_46
    .end packed-switch
.end method

.method public a(Z)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/il;->a:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public a()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/il;->a:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public a(Lcom/xiaomi/push/il;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->a()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/il;->a()Z

    move-result v2

    if-nez v1, :cond_10

    if-eqz v2, :cond_21

    :cond_10
    if-eqz v1, :cond_222

    if-nez v2, :cond_16

    goto/16 :goto_222

    :cond_16
    iget-object v1, p0, Lcom/xiaomi/push/il;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/il;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    return v0

    :cond_21
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->b()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/il;->b()Z

    move-result v2

    if-nez v1, :cond_2d

    if-eqz v2, :cond_3e

    :cond_2d
    if-eqz v1, :cond_222

    if-nez v2, :cond_33

    goto/16 :goto_222

    :cond_33
    iget-object v1, p0, Lcom/xiaomi/push/il;->a:Lcom/xiaomi/push/ik;

    iget-object v2, p1, Lcom/xiaomi/push/il;->a:Lcom/xiaomi/push/ik;

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/ik;->a(Lcom/xiaomi/push/ik;)Z

    move-result v1

    if-nez v1, :cond_3e

    return v0

    :cond_3e
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->c()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/il;->c()Z

    move-result v2

    if-nez v1, :cond_4a

    if-eqz v2, :cond_5b

    :cond_4a
    if-eqz v1, :cond_222

    if-nez v2, :cond_50

    goto/16 :goto_222

    :cond_50
    iget-object v1, p0, Lcom/xiaomi/push/il;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/il;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5b

    return v0

    :cond_5b
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->d()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/il;->d()Z

    move-result v2

    if-nez v1, :cond_67

    if-eqz v2, :cond_78

    :cond_67
    if-eqz v1, :cond_222

    if-nez v2, :cond_6d

    goto/16 :goto_222

    :cond_6d
    iget-object v1, p0, Lcom/xiaomi/push/il;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/il;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    return v0

    :cond_78
    iget-wide v1, p0, Lcom/xiaomi/push/il;->a:J

    iget-wide v3, p1, Lcom/xiaomi/push/il;->a:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_81

    return v0

    :cond_81
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->f()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/il;->f()Z

    move-result v2

    if-nez v1, :cond_8d

    if-eqz v2, :cond_9e

    :cond_8d
    if-eqz v1, :cond_222

    if-nez v2, :cond_93

    goto/16 :goto_222

    :cond_93
    iget-object v1, p0, Lcom/xiaomi/push/il;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/il;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9e

    return v0

    :cond_9e
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->g()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/il;->g()Z

    move-result v2

    if-nez v1, :cond_aa

    if-eqz v2, :cond_bb

    :cond_aa
    if-eqz v1, :cond_222

    if-nez v2, :cond_b0

    goto/16 :goto_222

    :cond_b0
    iget-object v1, p0, Lcom/xiaomi/push/il;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/il;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bb

    return v0

    :cond_bb
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->h()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/il;->h()Z

    move-result v2

    if-nez v1, :cond_c7

    if-eqz v2, :cond_d8

    :cond_c7
    if-eqz v1, :cond_222

    if-nez v2, :cond_cd

    goto/16 :goto_222

    :cond_cd
    iget-object v1, p0, Lcom/xiaomi/push/il;->a:Lcom/xiaomi/push/iy;

    iget-object v2, p1, Lcom/xiaomi/push/il;->a:Lcom/xiaomi/push/iy;

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/iy;->a(Lcom/xiaomi/push/iy;)Z

    move-result v1

    if-nez v1, :cond_d8

    return v0

    :cond_d8
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->i()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/il;->i()Z

    move-result v2

    if-nez v1, :cond_e4

    if-eqz v2, :cond_f5

    :cond_e4
    if-eqz v1, :cond_222

    if-nez v2, :cond_ea

    goto/16 :goto_222

    :cond_ea
    iget-object v1, p0, Lcom/xiaomi/push/il;->f:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/il;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f5

    return v0

    :cond_f5
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->j()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/il;->j()Z

    move-result v2

    if-nez v1, :cond_101

    if-eqz v2, :cond_112

    :cond_101
    if-eqz v1, :cond_222

    if-nez v2, :cond_107

    goto/16 :goto_222

    :cond_107
    iget-object v1, p0, Lcom/xiaomi/push/il;->g:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/il;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_112

    return v0

    :cond_112
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->k()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/il;->k()Z

    move-result v2

    if-nez v1, :cond_11e

    if-eqz v2, :cond_12b

    :cond_11e
    if-eqz v1, :cond_222

    if-nez v2, :cond_124

    goto/16 :goto_222

    :cond_124
    iget-boolean v1, p0, Lcom/xiaomi/push/il;->a:Z

    iget-boolean v2, p1, Lcom/xiaomi/push/il;->a:Z

    if-eq v1, v2, :cond_12b

    return v0

    :cond_12b
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->l()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/il;->l()Z

    move-result v2

    if-nez v1, :cond_137

    if-eqz v2, :cond_148

    :cond_137
    if-eqz v1, :cond_222

    if-nez v2, :cond_13d

    goto/16 :goto_222

    :cond_13d
    iget-object v1, p0, Lcom/xiaomi/push/il;->h:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/il;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_148

    return v0

    :cond_148
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->m()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/il;->m()Z

    move-result v2

    if-nez v1, :cond_154

    if-eqz v2, :cond_165

    :cond_154
    if-eqz v1, :cond_222

    if-nez v2, :cond_15a

    goto/16 :goto_222

    :cond_15a
    iget-object v1, p0, Lcom/xiaomi/push/il;->i:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/il;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_165

    return v0

    :cond_165
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->n()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/il;->n()Z

    move-result v2

    if-nez v1, :cond_171

    if-eqz v2, :cond_182

    :cond_171
    if-eqz v1, :cond_222

    if-nez v2, :cond_177

    goto/16 :goto_222

    :cond_177
    iget-object v1, p0, Lcom/xiaomi/push/il;->j:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/il;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_182

    return v0

    :cond_182
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->o()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/il;->o()Z

    move-result v2

    if-nez v1, :cond_18e

    if-eqz v2, :cond_19b

    :cond_18e
    if-eqz v1, :cond_222

    if-nez v2, :cond_194

    goto/16 :goto_222

    :cond_194
    iget-short v1, p0, Lcom/xiaomi/push/il;->a:S

    iget-short v2, p1, Lcom/xiaomi/push/il;->a:S

    if-eq v1, v2, :cond_19b

    return v0

    :cond_19b
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->p()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/il;->p()Z

    move-result v2

    if-nez v1, :cond_1a7

    if-eqz v2, :cond_1b4

    :cond_1a7
    if-eqz v1, :cond_222

    if-nez v2, :cond_1ad

    goto/16 :goto_222

    :cond_1ad
    iget-short v1, p0, Lcom/xiaomi/push/il;->b:S

    iget-short v2, p1, Lcom/xiaomi/push/il;->b:S

    if-eq v1, v2, :cond_1b4

    return v0

    :cond_1b4
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->q()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/il;->q()Z

    move-result v2

    if-nez v1, :cond_1c0

    if-eqz v2, :cond_1d0

    :cond_1c0
    if-eqz v1, :cond_222

    if-nez v2, :cond_1c5

    goto :goto_222

    :cond_1c5
    iget-object v1, p0, Lcom/xiaomi/push/il;->k:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/il;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d0

    return v0

    :cond_1d0
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->r()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/il;->r()Z

    move-result v2

    if-nez v1, :cond_1dc

    if-eqz v2, :cond_1ec

    :cond_1dc
    if-eqz v1, :cond_222

    if-nez v2, :cond_1e1

    goto :goto_222

    :cond_1e1
    iget-object v1, p0, Lcom/xiaomi/push/il;->l:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/il;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1ec

    return v0

    :cond_1ec
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->s()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/il;->s()Z

    move-result v2

    if-nez v1, :cond_1f8

    if-eqz v2, :cond_204

    :cond_1f8
    if-eqz v1, :cond_222

    if-nez v2, :cond_1fd

    goto :goto_222

    :cond_1fd
    iget v1, p0, Lcom/xiaomi/push/il;->a:I

    iget v2, p1, Lcom/xiaomi/push/il;->a:I

    if-eq v1, v2, :cond_204

    return v0

    :cond_204
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->t()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/il;->t()Z

    move-result v2

    if-nez v1, :cond_210

    if-eqz v2, :cond_220

    :cond_210
    if-eqz v1, :cond_222

    if-nez v2, :cond_215

    goto :goto_222

    :cond_215
    iget-object v1, p0, Lcom/xiaomi/push/il;->a:Ljava/util/Map;

    iget-object p1, p1, Lcom/xiaomi/push/il;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_220

    return v0

    :cond_220
    const/4 p1, 0x1

    return p1

    :cond_222
    :goto_222
    return v0
.end method

.method public b(Ljava/lang/String;)Lcom/xiaomi/push/il;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/push/il;->c:Ljava/lang/String;

    return-object p0
.end method

.method public b(Lcom/xiaomi/push/jr;)V
    .registers 5

    invoke-virtual {p0}, Lcom/xiaomi/push/il;->a()V

    sget-object v0, Lcom/xiaomi/push/il;->a:Lcom/xiaomi/push/jw;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jw;)V

    iget-object v0, p0, Lcom/xiaomi/push/il;->a:Ljava/lang/String;

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/xiaomi/push/il;->a()Z

    move-result v0

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/xiaomi/push/il;->a:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/il;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_1f
    iget-object v0, p0, Lcom/xiaomi/push/il;->a:Lcom/xiaomi/push/ik;

    if-eqz v0, :cond_36

    invoke-virtual {p0}, Lcom/xiaomi/push/il;->b()Z

    move-result v0

    if-eqz v0, :cond_36

    sget-object v0, Lcom/xiaomi/push/il;->b:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/il;->a:Lcom/xiaomi/push/ik;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/ik;->b(Lcom/xiaomi/push/jr;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_36
    iget-object v0, p0, Lcom/xiaomi/push/il;->b:Ljava/lang/String;

    if-eqz v0, :cond_47

    sget-object v0, Lcom/xiaomi/push/il;->c:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/il;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_47
    iget-object v0, p0, Lcom/xiaomi/push/il;->c:Ljava/lang/String;

    if-eqz v0, :cond_58

    sget-object v0, Lcom/xiaomi/push/il;->d:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/il;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_58
    sget-object v0, Lcom/xiaomi/push/il;->e:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-wide v0, p0, Lcom/xiaomi/push/il;->a:J

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/jr;->a(J)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    iget-object v0, p0, Lcom/xiaomi/push/il;->d:Ljava/lang/String;

    if-eqz v0, :cond_7c

    invoke-virtual {p0}, Lcom/xiaomi/push/il;->f()Z

    move-result v0

    if-eqz v0, :cond_7c

    sget-object v0, Lcom/xiaomi/push/il;->f:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/il;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_7c
    iget-object v0, p0, Lcom/xiaomi/push/il;->e:Ljava/lang/String;

    if-eqz v0, :cond_93

    invoke-virtual {p0}, Lcom/xiaomi/push/il;->g()Z

    move-result v0

    if-eqz v0, :cond_93

    sget-object v0, Lcom/xiaomi/push/il;->g:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/il;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_93
    iget-object v0, p0, Lcom/xiaomi/push/il;->a:Lcom/xiaomi/push/iy;

    if-eqz v0, :cond_aa

    invoke-virtual {p0}, Lcom/xiaomi/push/il;->h()Z

    move-result v0

    if-eqz v0, :cond_aa

    sget-object v0, Lcom/xiaomi/push/il;->h:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/il;->a:Lcom/xiaomi/push/iy;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/iy;->b(Lcom/xiaomi/push/jr;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_aa
    iget-object v0, p0, Lcom/xiaomi/push/il;->f:Ljava/lang/String;

    if-eqz v0, :cond_c1

    invoke-virtual {p0}, Lcom/xiaomi/push/il;->i()Z

    move-result v0

    if-eqz v0, :cond_c1

    sget-object v0, Lcom/xiaomi/push/il;->i:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/il;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_c1
    iget-object v0, p0, Lcom/xiaomi/push/il;->g:Ljava/lang/String;

    if-eqz v0, :cond_d8

    invoke-virtual {p0}, Lcom/xiaomi/push/il;->j()Z

    move-result v0

    if-eqz v0, :cond_d8

    sget-object v0, Lcom/xiaomi/push/il;->j:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/il;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_d8
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->k()Z

    move-result v0

    if-eqz v0, :cond_eb

    sget-object v0, Lcom/xiaomi/push/il;->k:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-boolean v0, p0, Lcom/xiaomi/push/il;->a:Z

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Z)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_eb
    iget-object v0, p0, Lcom/xiaomi/push/il;->h:Ljava/lang/String;

    if-eqz v0, :cond_102

    invoke-virtual {p0}, Lcom/xiaomi/push/il;->l()Z

    move-result v0

    if-eqz v0, :cond_102

    sget-object v0, Lcom/xiaomi/push/il;->l:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/il;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_102
    iget-object v0, p0, Lcom/xiaomi/push/il;->i:Ljava/lang/String;

    if-eqz v0, :cond_119

    invoke-virtual {p0}, Lcom/xiaomi/push/il;->m()Z

    move-result v0

    if-eqz v0, :cond_119

    sget-object v0, Lcom/xiaomi/push/il;->m:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/il;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_119
    iget-object v0, p0, Lcom/xiaomi/push/il;->j:Ljava/lang/String;

    if-eqz v0, :cond_130

    invoke-virtual {p0}, Lcom/xiaomi/push/il;->n()Z

    move-result v0

    if-eqz v0, :cond_130

    sget-object v0, Lcom/xiaomi/push/il;->n:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/il;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_130
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->o()Z

    move-result v0

    if-eqz v0, :cond_143

    sget-object v0, Lcom/xiaomi/push/il;->o:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-short v0, p0, Lcom/xiaomi/push/il;->a:S

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(S)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_143
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->p()Z

    move-result v0

    if-eqz v0, :cond_156

    sget-object v0, Lcom/xiaomi/push/il;->p:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-short v0, p0, Lcom/xiaomi/push/il;->b:S

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(S)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_156
    iget-object v0, p0, Lcom/xiaomi/push/il;->k:Ljava/lang/String;

    if-eqz v0, :cond_16d

    invoke-virtual {p0}, Lcom/xiaomi/push/il;->q()Z

    move-result v0

    if-eqz v0, :cond_16d

    sget-object v0, Lcom/xiaomi/push/il;->q:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/il;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_16d
    iget-object v0, p0, Lcom/xiaomi/push/il;->l:Ljava/lang/String;

    if-eqz v0, :cond_184

    invoke-virtual {p0}, Lcom/xiaomi/push/il;->r()Z

    move-result v0

    if-eqz v0, :cond_184

    sget-object v0, Lcom/xiaomi/push/il;->r:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/il;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_184
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->s()Z

    move-result v0

    if-eqz v0, :cond_197

    sget-object v0, Lcom/xiaomi/push/il;->s:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget v0, p0, Lcom/xiaomi/push/il;->a:I

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(I)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_197
    iget-object v0, p0, Lcom/xiaomi/push/il;->a:Ljava/util/Map;

    if-eqz v0, :cond_1e5

    invoke-virtual {p0}, Lcom/xiaomi/push/il;->t()Z

    move-result v0

    if-eqz v0, :cond_1e5

    sget-object v0, Lcom/xiaomi/push/il;->t:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    new-instance v0, Lcom/xiaomi/push/jq;

    iget-object v1, p0, Lcom/xiaomi/push/il;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/16 v2, 0xb

    invoke-direct {v0, v2, v2, v1}, Lcom/xiaomi/push/jq;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jq;)V

    iget-object v0, p0, Lcom/xiaomi/push/il;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1df

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    goto :goto_1c0

    :cond_1df
    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->d()V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_1e5
    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->c()V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()V

    return-void
.end method

.method public b(Z)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/il;->a:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/il;->a:Lcom/xiaomi/push/ik;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public c(Ljava/lang/String;)Lcom/xiaomi/push/il;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/push/il;->d:Ljava/lang/String;

    return-object p0
.end method

.method public c(Z)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/il;->a:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public c()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/il;->b:Ljava/lang/String;

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

    check-cast p1, Lcom/xiaomi/push/il;

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/il;->a(Lcom/xiaomi/push/il;)I

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/String;)Lcom/xiaomi/push/il;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/push/il;->e:Ljava/lang/String;

    return-object p0
.end method

.method public d(Z)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/il;->a:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public d()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/il;->c:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public e(Z)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/il;->a:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public e()Z
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/push/il;->a:Ljava/util/BitSet;

    const/4 v1, 0x0

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
    instance-of v1, p1, Lcom/xiaomi/push/il;

    if-eqz v1, :cond_f

    check-cast p1, Lcom/xiaomi/push/il;

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/il;->a(Lcom/xiaomi/push/il;)Z

    move-result p1

    return p1

    :cond_f
    return v0
.end method

.method public f()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/il;->d:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/xiaomi/push/il;->e:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public h()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/il;->a:Lcom/xiaomi/push/iy;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public hashCode()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public i()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/il;->f:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public j()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/il;->g:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public k()Z
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/push/il;->a:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public l()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/il;->h:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public m()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/il;->i:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public n()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/il;->j:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public o()Z
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/push/il;->a:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public p()Z
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/push/il;->a:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public q()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/il;->k:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public r()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/il;->l:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public s()Z
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/push/il;->a:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public t()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/il;->a:Ljava/util/Map;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "XmPushActionAckMessage("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/push/il;->a()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "null"

    if-eqz v1, :cond_22

    const-string v1, "debug:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/il;->a:Ljava/lang/String;

    if-nez v1, :cond_1d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    :cond_1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_20
    move v1, v2

    goto :goto_23

    :cond_22
    const/4 v1, 0x1

    :goto_23
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->b()Z

    move-result v4

    const-string v5, ", "

    if-eqz v4, :cond_41

    if-nez v1, :cond_30

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_30
    const-string v1, "target:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/il;->a:Lcom/xiaomi/push/ik;

    if-nez v1, :cond_3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_40

    :cond_3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_40
    move v1, v2

    :cond_41
    if-nez v1, :cond_46

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_46
    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/il;->b:Ljava/lang/String;

    if-nez v1, :cond_53

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_56

    :cond_53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_56
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "appId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/il;->c:Ljava/lang/String;

    if-nez v1, :cond_66

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_69

    :cond_66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_69
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "messageTs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/push/il;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/push/il;->f()Z

    move-result v1

    if-eqz v1, :cond_8f

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "topic:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/il;->d:Ljava/lang/String;

    if-nez v1, :cond_8c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8f

    :cond_8c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8f
    :goto_8f
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->g()Z

    move-result v1

    if-eqz v1, :cond_a8

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "aliasName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/il;->e:Ljava/lang/String;

    if-nez v1, :cond_a5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a8

    :cond_a5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a8
    :goto_a8
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->h()Z

    move-result v1

    if-eqz v1, :cond_c1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "request:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/il;->a:Lcom/xiaomi/push/iy;

    if-nez v1, :cond_be

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c1

    :cond_be
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_c1
    :goto_c1
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->i()Z

    move-result v1

    if-eqz v1, :cond_da

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "packageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/il;->f:Ljava/lang/String;

    if-nez v1, :cond_d7

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_da

    :cond_d7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_da
    :goto_da
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->j()Z

    move-result v1

    if-eqz v1, :cond_f3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "category:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/il;->g:Ljava/lang/String;

    if-nez v1, :cond_f0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f3

    :cond_f0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f3
    :goto_f3
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->k()Z

    move-result v1

    if-eqz v1, :cond_106

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isOnline:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaomi/push/il;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_106
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->l()Z

    move-result v1

    if-eqz v1, :cond_11f

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "regId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/il;->h:Ljava/lang/String;

    if-nez v1, :cond_11c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11f

    :cond_11c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11f
    :goto_11f
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->m()Z

    move-result v1

    if-eqz v1, :cond_138

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "callbackUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/il;->i:Ljava/lang/String;

    if-nez v1, :cond_135

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_138

    :cond_135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_138
    :goto_138
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->n()Z

    move-result v1

    if-eqz v1, :cond_151

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "userAccount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/il;->j:Ljava/lang/String;

    if-nez v1, :cond_14e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_151

    :cond_14e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_151
    :goto_151
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->o()Z

    move-result v1

    if-eqz v1, :cond_164

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "deviceStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/xiaomi/push/il;->a:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_164
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->p()Z

    move-result v1

    if-eqz v1, :cond_177

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "geoMsgStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/xiaomi/push/il;->b:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_177
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->q()Z

    move-result v1

    if-eqz v1, :cond_190

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "imeiMd5:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/il;->k:Ljava/lang/String;

    if-nez v1, :cond_18d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_190

    :cond_18d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_190
    :goto_190
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->r()Z

    move-result v1

    if-eqz v1, :cond_1a9

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "deviceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/il;->l:Ljava/lang/String;

    if-nez v1, :cond_1a6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a9

    :cond_1a6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a9
    :goto_1a9
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->s()Z

    move-result v1

    if-eqz v1, :cond_1bc

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "passThrough:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/push/il;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1bc
    invoke-virtual {p0}, Lcom/xiaomi/push/il;->t()Z

    move-result v1

    if-eqz v1, :cond_1d5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "extra:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/il;->a:Ljava/util/Map;

    if-nez v1, :cond_1d2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d5

    :cond_1d2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1d5
    :goto_1d5
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
