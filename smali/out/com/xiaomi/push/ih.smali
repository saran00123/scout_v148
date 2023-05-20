.class public Lcom/xiaomi/push/ih;
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
        "Lcom/xiaomi/push/ih;",
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


# instance fields
.field public a:J

.field public a:Lcom/xiaomi/push/ii;

.field public a:Lcom/xiaomi/push/ik;

.field public a:Ljava/lang/String;

.field private a:Ljava/util/BitSet;

.field public a:Z

.field public b:J

.field public b:Ljava/lang/String;

.field public c:J

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
    .registers 7

    new-instance v0, Lcom/xiaomi/push/jw;

    const-string v1, "PushMessage"

    invoke-direct {v0, v1}, Lcom/xiaomi/push/jw;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/ih;->a:Lcom/xiaomi/push/jw;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v1, 0xc

    const-string v2, ""

    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ih;->a:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/4 v3, 0x2

    const/16 v4, 0xb

    invoke-direct {v0, v2, v4, v3}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ih;->b:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/4 v5, 0x3

    invoke-direct {v0, v2, v4, v5}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ih;->c:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/4 v5, 0x4

    invoke-direct {v0, v2, v4, v5}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ih;->d:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v5, 0xa

    const/4 v6, 0x5

    invoke-direct {v0, v2, v5, v6}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ih;->e:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/4 v6, 0x6

    invoke-direct {v0, v2, v5, v6}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ih;->f:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/4 v6, 0x7

    invoke-direct {v0, v2, v4, v6}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ih;->g:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v6, 0x8

    invoke-direct {v0, v2, v4, v6}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ih;->h:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v6, 0x9

    invoke-direct {v0, v2, v4, v6}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ih;->i:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    invoke-direct {v0, v2, v4, v5}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ih;->j:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    invoke-direct {v0, v2, v4, v4}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ih;->k:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    invoke-direct {v0, v2, v1, v1}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ih;->l:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v1, 0xd

    invoke-direct {v0, v2, v4, v1}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ih;->m:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v1, 0xe

    invoke-direct {v0, v2, v3, v1}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ih;->n:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v1, 0xf

    invoke-direct {v0, v2, v4, v1}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ih;->o:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v1, 0x10

    invoke-direct {v0, v2, v5, v1}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ih;->p:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v1, 0x14

    invoke-direct {v0, v2, v4, v1}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ih;->q:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v1, 0x15

    invoke-direct {v0, v2, v4, v1}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ih;->r:Lcom/xiaomi/push/jo;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/push/ih;->a:Ljava/util/BitSet;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/push/ih;->a:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/push/ih;)I
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
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ih;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_3a

    return v0

    :cond_3a
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->a()Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/xiaomi/push/ih;->a:Lcom/xiaomi/push/ik;

    iget-object v1, p1, Lcom/xiaomi/push/ih;->a:Lcom/xiaomi/push/ik;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_4b

    return v0

    :cond_4b
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ih;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_62

    return v0

    :cond_62
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->b()Z

    move-result v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/xiaomi/push/ih;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/ih;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_73

    return v0

    :cond_73
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ih;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_8a

    return v0

    :cond_8a
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->c()Z

    move-result v0

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/xiaomi/push/ih;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/ih;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_9b

    return v0

    :cond_9b
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ih;->d()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_b2

    return v0

    :cond_b2
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->d()Z

    move-result v0

    if-eqz v0, :cond_c3

    iget-object v0, p0, Lcom/xiaomi/push/ih;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/ih;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_c3

    return v0

    :cond_c3
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ih;->e()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_da

    return v0

    :cond_da
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->e()Z

    move-result v0

    if-eqz v0, :cond_eb

    iget-wide v0, p0, Lcom/xiaomi/push/ih;->a:J

    iget-wide v2, p1, Lcom/xiaomi/push/ih;->a:J

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/push/jh;->a(JJ)I

    move-result v0

    if-eqz v0, :cond_eb

    return v0

    :cond_eb
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->f()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ih;->f()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_102

    return v0

    :cond_102
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->f()Z

    move-result v0

    if-eqz v0, :cond_113

    iget-wide v0, p0, Lcom/xiaomi/push/ih;->b:J

    iget-wide v2, p1, Lcom/xiaomi/push/ih;->b:J

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/push/jh;->a(JJ)I

    move-result v0

    if-eqz v0, :cond_113

    return v0

    :cond_113
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->g()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ih;->g()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_12a

    return v0

    :cond_12a
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->g()Z

    move-result v0

    if-eqz v0, :cond_13b

    iget-object v0, p0, Lcom/xiaomi/push/ih;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/ih;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_13b

    return v0

    :cond_13b
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->h()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ih;->h()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_152

    return v0

    :cond_152
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->h()Z

    move-result v0

    if-eqz v0, :cond_163

    iget-object v0, p0, Lcom/xiaomi/push/ih;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/ih;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_163

    return v0

    :cond_163
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ih;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_17a

    return v0

    :cond_17a
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->i()Z

    move-result v0

    if-eqz v0, :cond_18b

    iget-object v0, p0, Lcom/xiaomi/push/ih;->f:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/ih;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_18b

    return v0

    :cond_18b
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->j()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ih;->j()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1a2

    return v0

    :cond_1a2
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->j()Z

    move-result v0

    if-eqz v0, :cond_1b3

    iget-object v0, p0, Lcom/xiaomi/push/ih;->g:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/ih;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1b3

    return v0

    :cond_1b3
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->k()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ih;->k()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1ca

    return v0

    :cond_1ca
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->k()Z

    move-result v0

    if-eqz v0, :cond_1db

    iget-object v0, p0, Lcom/xiaomi/push/ih;->h:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/ih;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1db

    return v0

    :cond_1db
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->l()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ih;->l()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1f2

    return v0

    :cond_1f2
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->l()Z

    move-result v0

    if-eqz v0, :cond_203

    iget-object v0, p0, Lcom/xiaomi/push/ih;->a:Lcom/xiaomi/push/ii;

    iget-object v1, p1, Lcom/xiaomi/push/ih;->a:Lcom/xiaomi/push/ii;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_203

    return v0

    :cond_203
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->m()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ih;->m()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_21a

    return v0

    :cond_21a
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->m()Z

    move-result v0

    if-eqz v0, :cond_22b

    iget-object v0, p0, Lcom/xiaomi/push/ih;->i:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/ih;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_22b

    return v0

    :cond_22b
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->n()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ih;->n()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_242

    return v0

    :cond_242
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->n()Z

    move-result v0

    if-eqz v0, :cond_253

    iget-boolean v0, p0, Lcom/xiaomi/push/ih;->a:Z

    iget-boolean v1, p1, Lcom/xiaomi/push/ih;->a:Z

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(ZZ)I

    move-result v0

    if-eqz v0, :cond_253

    return v0

    :cond_253
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->o()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ih;->o()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_26a

    return v0

    :cond_26a
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->o()Z

    move-result v0

    if-eqz v0, :cond_27b

    iget-object v0, p0, Lcom/xiaomi/push/ih;->j:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/ih;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_27b

    return v0

    :cond_27b
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->p()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ih;->p()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_292

    return v0

    :cond_292
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->p()Z

    move-result v0

    if-eqz v0, :cond_2a3

    iget-wide v0, p0, Lcom/xiaomi/push/ih;->c:J

    iget-wide v2, p1, Lcom/xiaomi/push/ih;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/push/jh;->a(JJ)I

    move-result v0

    if-eqz v0, :cond_2a3

    return v0

    :cond_2a3
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->q()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ih;->q()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_2ba

    return v0

    :cond_2ba
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->q()Z

    move-result v0

    if-eqz v0, :cond_2cb

    iget-object v0, p0, Lcom/xiaomi/push/ih;->k:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/ih;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2cb

    return v0

    :cond_2cb
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->r()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ih;->r()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_2e2

    return v0

    :cond_2e2
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->r()Z

    move-result v0

    if-eqz v0, :cond_2f3

    iget-object v0, p0, Lcom/xiaomi/push/ih;->l:Ljava/lang/String;

    iget-object p1, p1, Lcom/xiaomi/push/ih;->l:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2f3

    return p1

    :cond_2f3
    const/4 p1, 0x0

    return p1
.end method

.method public a()J
    .registers 3

    iget-wide v0, p0, Lcom/xiaomi/push/ih;->a:J

    return-wide v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/ih;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a()V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/ih;->a:Ljava/lang/String;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/xiaomi/push/ih;->b:Ljava/lang/String;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/xiaomi/push/ih;->c:Ljava/lang/String;

    if-eqz v0, :cond_d

    return-void

    :cond_d
    new-instance v0, Lcom/xiaomi/push/js;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'payload\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->toString()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->toString()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/push/js;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/xiaomi/push/jr;)V
    .registers 8

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Lcom/xiaomi/push/jw;

    :goto_3
    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Lcom/xiaomi/push/jo;

    move-result-object v0

    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-nez v1, :cond_12

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->f()V

    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->a()V

    return-void

    :cond_12
    iget-short v1, v0, Lcom/xiaomi/push/jo;->a:S

    const/16 v2, 0x14

    const/16 v3, 0xb

    if-eq v1, v2, :cond_10a

    const/16 v2, 0x15

    if-eq v1, v2, :cond_ff

    const/16 v2, 0xc

    const/16 v4, 0xa

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_11a

    :cond_26
    iget-byte v0, v0, Lcom/xiaomi/push/jo;->a:B

    invoke-static {p1, v0}, Lcom/xiaomi/push/ju;->a(Lcom/xiaomi/push/jr;B)V

    goto/16 :goto_114

    :pswitch_2d
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v4, :cond_26

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/push/ih;->c:J

    invoke-virtual {p0, v5}, Lcom/xiaomi/push/ih;->d(Z)V

    goto/16 :goto_114

    :pswitch_3c
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v3, :cond_26

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/ih;->j:Ljava/lang/String;

    goto/16 :goto_114

    :pswitch_48
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_26

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/push/ih;->a:Z

    invoke-virtual {p0, v5}, Lcom/xiaomi/push/ih;->c(Z)V

    goto/16 :goto_114

    :pswitch_58
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v3, :cond_26

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/ih;->i:Ljava/lang/String;

    goto/16 :goto_114

    :pswitch_64
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v2, :cond_26

    new-instance v0, Lcom/xiaomi/push/ii;

    invoke-direct {v0}, Lcom/xiaomi/push/ii;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/ih;->a:Lcom/xiaomi/push/ii;

    iget-object v0, p0, Lcom/xiaomi/push/ih;->a:Lcom/xiaomi/push/ii;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/ii;->a(Lcom/xiaomi/push/jr;)V

    goto/16 :goto_114

    :pswitch_76
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v3, :cond_26

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/ih;->h:Ljava/lang/String;

    goto/16 :goto_114

    :pswitch_82
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v3, :cond_26

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/ih;->g:Ljava/lang/String;

    goto/16 :goto_114

    :pswitch_8e
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v3, :cond_26

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/ih;->f:Ljava/lang/String;

    goto/16 :goto_114

    :pswitch_9a
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v3, :cond_26

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/ih;->e:Ljava/lang/String;

    goto/16 :goto_114

    :pswitch_a6
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v3, :cond_26

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/ih;->d:Ljava/lang/String;

    goto :goto_114

    :pswitch_b1
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v4, :cond_26

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/push/ih;->b:J

    invoke-virtual {p0, v5}, Lcom/xiaomi/push/ih;->b(Z)V

    goto :goto_114

    :pswitch_bf
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v4, :cond_26

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/push/ih;->a:J

    invoke-virtual {p0, v5}, Lcom/xiaomi/push/ih;->a(Z)V

    goto :goto_114

    :pswitch_cd
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v3, :cond_26

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/ih;->c:Ljava/lang/String;

    goto :goto_114

    :pswitch_d8
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v3, :cond_26

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/ih;->b:Ljava/lang/String;

    goto :goto_114

    :pswitch_e3
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v3, :cond_26

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/ih;->a:Ljava/lang/String;

    goto :goto_114

    :pswitch_ee
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v2, :cond_26

    new-instance v0, Lcom/xiaomi/push/ik;

    invoke-direct {v0}, Lcom/xiaomi/push/ik;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/ih;->a:Lcom/xiaomi/push/ik;

    iget-object v0, p0, Lcom/xiaomi/push/ih;->a:Lcom/xiaomi/push/ik;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/ik;->a(Lcom/xiaomi/push/jr;)V

    goto :goto_114

    :cond_ff
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v3, :cond_26

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/ih;->l:Ljava/lang/String;

    goto :goto_114

    :cond_10a
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v3, :cond_26

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/ih;->k:Ljava/lang/String;

    :goto_114
    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->g()V

    goto/16 :goto_3

    nop

    :pswitch_data_11a
    .packed-switch 0x1
        :pswitch_ee
        :pswitch_e3
        :pswitch_d8
        :pswitch_cd
        :pswitch_bf
        :pswitch_b1
        :pswitch_a6
        :pswitch_9a
        :pswitch_8e
        :pswitch_82
        :pswitch_76
        :pswitch_64
        :pswitch_58
        :pswitch_48
        :pswitch_3c
        :pswitch_2d
    .end packed-switch
.end method

.method public a(Z)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/ih;->a:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public a()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/ih;->a:Lcom/xiaomi/push/ik;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public a(Lcom/xiaomi/push/ih;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->a()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ih;->a()Z

    move-result v2

    if-nez v1, :cond_10

    if-eqz v2, :cond_21

    :cond_10
    if-eqz v1, :cond_202

    if-nez v2, :cond_16

    goto/16 :goto_202

    :cond_16
    iget-object v1, p0, Lcom/xiaomi/push/ih;->a:Lcom/xiaomi/push/ik;

    iget-object v2, p1, Lcom/xiaomi/push/ih;->a:Lcom/xiaomi/push/ik;

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/ik;->a(Lcom/xiaomi/push/ik;)Z

    move-result v1

    if-nez v1, :cond_21

    return v0

    :cond_21
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->b()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ih;->b()Z

    move-result v2

    if-nez v1, :cond_2d

    if-eqz v2, :cond_3e

    :cond_2d
    if-eqz v1, :cond_202

    if-nez v2, :cond_33

    goto/16 :goto_202

    :cond_33
    iget-object v1, p0, Lcom/xiaomi/push/ih;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/ih;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    return v0

    :cond_3e
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->c()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ih;->c()Z

    move-result v2

    if-nez v1, :cond_4a

    if-eqz v2, :cond_5b

    :cond_4a
    if-eqz v1, :cond_202

    if-nez v2, :cond_50

    goto/16 :goto_202

    :cond_50
    iget-object v1, p0, Lcom/xiaomi/push/ih;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/ih;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5b

    return v0

    :cond_5b
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->d()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ih;->d()Z

    move-result v2

    if-nez v1, :cond_67

    if-eqz v2, :cond_78

    :cond_67
    if-eqz v1, :cond_202

    if-nez v2, :cond_6d

    goto/16 :goto_202

    :cond_6d
    iget-object v1, p0, Lcom/xiaomi/push/ih;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/ih;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    return v0

    :cond_78
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->e()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ih;->e()Z

    move-result v2

    if-nez v1, :cond_84

    if-eqz v2, :cond_93

    :cond_84
    if-eqz v1, :cond_202

    if-nez v2, :cond_8a

    goto/16 :goto_202

    :cond_8a
    iget-wide v1, p0, Lcom/xiaomi/push/ih;->a:J

    iget-wide v3, p1, Lcom/xiaomi/push/ih;->a:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_93

    return v0

    :cond_93
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->f()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ih;->f()Z

    move-result v2

    if-nez v1, :cond_9f

    if-eqz v2, :cond_ae

    :cond_9f
    if-eqz v1, :cond_202

    if-nez v2, :cond_a5

    goto/16 :goto_202

    :cond_a5
    iget-wide v1, p0, Lcom/xiaomi/push/ih;->b:J

    iget-wide v3, p1, Lcom/xiaomi/push/ih;->b:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_ae

    return v0

    :cond_ae
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->g()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ih;->g()Z

    move-result v2

    if-nez v1, :cond_ba

    if-eqz v2, :cond_cb

    :cond_ba
    if-eqz v1, :cond_202

    if-nez v2, :cond_c0

    goto/16 :goto_202

    :cond_c0
    iget-object v1, p0, Lcom/xiaomi/push/ih;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/ih;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cb

    return v0

    :cond_cb
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->h()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ih;->h()Z

    move-result v2

    if-nez v1, :cond_d7

    if-eqz v2, :cond_e8

    :cond_d7
    if-eqz v1, :cond_202

    if-nez v2, :cond_dd

    goto/16 :goto_202

    :cond_dd
    iget-object v1, p0, Lcom/xiaomi/push/ih;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/ih;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e8

    return v0

    :cond_e8
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->i()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ih;->i()Z

    move-result v2

    if-nez v1, :cond_f4

    if-eqz v2, :cond_105

    :cond_f4
    if-eqz v1, :cond_202

    if-nez v2, :cond_fa

    goto/16 :goto_202

    :cond_fa
    iget-object v1, p0, Lcom/xiaomi/push/ih;->f:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/ih;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_105

    return v0

    :cond_105
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->j()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ih;->j()Z

    move-result v2

    if-nez v1, :cond_111

    if-eqz v2, :cond_122

    :cond_111
    if-eqz v1, :cond_202

    if-nez v2, :cond_117

    goto/16 :goto_202

    :cond_117
    iget-object v1, p0, Lcom/xiaomi/push/ih;->g:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/ih;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_122

    return v0

    :cond_122
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->k()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ih;->k()Z

    move-result v2

    if-nez v1, :cond_12e

    if-eqz v2, :cond_13f

    :cond_12e
    if-eqz v1, :cond_202

    if-nez v2, :cond_134

    goto/16 :goto_202

    :cond_134
    iget-object v1, p0, Lcom/xiaomi/push/ih;->h:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/ih;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13f

    return v0

    :cond_13f
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->l()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ih;->l()Z

    move-result v2

    if-nez v1, :cond_14b

    if-eqz v2, :cond_15c

    :cond_14b
    if-eqz v1, :cond_202

    if-nez v2, :cond_151

    goto/16 :goto_202

    :cond_151
    iget-object v1, p0, Lcom/xiaomi/push/ih;->a:Lcom/xiaomi/push/ii;

    iget-object v2, p1, Lcom/xiaomi/push/ih;->a:Lcom/xiaomi/push/ii;

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/ii;->a(Lcom/xiaomi/push/ii;)Z

    move-result v1

    if-nez v1, :cond_15c

    return v0

    :cond_15c
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->m()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ih;->m()Z

    move-result v2

    if-nez v1, :cond_168

    if-eqz v2, :cond_179

    :cond_168
    if-eqz v1, :cond_202

    if-nez v2, :cond_16e

    goto/16 :goto_202

    :cond_16e
    iget-object v1, p0, Lcom/xiaomi/push/ih;->i:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/ih;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_179

    return v0

    :cond_179
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->n()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ih;->n()Z

    move-result v2

    if-nez v1, :cond_185

    if-eqz v2, :cond_192

    :cond_185
    if-eqz v1, :cond_202

    if-nez v2, :cond_18b

    goto/16 :goto_202

    :cond_18b
    iget-boolean v1, p0, Lcom/xiaomi/push/ih;->a:Z

    iget-boolean v2, p1, Lcom/xiaomi/push/ih;->a:Z

    if-eq v1, v2, :cond_192

    return v0

    :cond_192
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->o()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ih;->o()Z

    move-result v2

    if-nez v1, :cond_19e

    if-eqz v2, :cond_1ae

    :cond_19e
    if-eqz v1, :cond_202

    if-nez v2, :cond_1a3

    goto :goto_202

    :cond_1a3
    iget-object v1, p0, Lcom/xiaomi/push/ih;->j:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/ih;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1ae

    return v0

    :cond_1ae
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->p()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ih;->p()Z

    move-result v2

    if-nez v1, :cond_1ba

    if-eqz v2, :cond_1c8

    :cond_1ba
    if-eqz v1, :cond_202

    if-nez v2, :cond_1bf

    goto :goto_202

    :cond_1bf
    iget-wide v1, p0, Lcom/xiaomi/push/ih;->c:J

    iget-wide v3, p1, Lcom/xiaomi/push/ih;->c:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1c8

    return v0

    :cond_1c8
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->q()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ih;->q()Z

    move-result v2

    if-nez v1, :cond_1d4

    if-eqz v2, :cond_1e4

    :cond_1d4
    if-eqz v1, :cond_202

    if-nez v2, :cond_1d9

    goto :goto_202

    :cond_1d9
    iget-object v1, p0, Lcom/xiaomi/push/ih;->k:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/ih;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e4

    return v0

    :cond_1e4
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->r()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ih;->r()Z

    move-result v2

    if-nez v1, :cond_1f0

    if-eqz v2, :cond_200

    :cond_1f0
    if-eqz v1, :cond_202

    if-nez v2, :cond_1f5

    goto :goto_202

    :cond_1f5
    iget-object v1, p0, Lcom/xiaomi/push/ih;->l:Ljava/lang/String;

    iget-object p1, p1, Lcom/xiaomi/push/ih;->l:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_200

    return v0

    :cond_200
    const/4 p1, 0x1

    return p1

    :cond_202
    :goto_202
    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/ih;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Lcom/xiaomi/push/jr;)V
    .registers 4

    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->a()V

    sget-object v0, Lcom/xiaomi/push/ih;->a:Lcom/xiaomi/push/jw;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jw;)V

    iget-object v0, p0, Lcom/xiaomi/push/ih;->a:Lcom/xiaomi/push/ik;

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->a()Z

    move-result v0

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/xiaomi/push/ih;->a:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/ih;->a:Lcom/xiaomi/push/ik;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/ik;->b(Lcom/xiaomi/push/jr;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_1f
    iget-object v0, p0, Lcom/xiaomi/push/ih;->a:Ljava/lang/String;

    if-eqz v0, :cond_30

    sget-object v0, Lcom/xiaomi/push/ih;->b:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/ih;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_30
    iget-object v0, p0, Lcom/xiaomi/push/ih;->b:Ljava/lang/String;

    if-eqz v0, :cond_41

    sget-object v0, Lcom/xiaomi/push/ih;->c:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/ih;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_41
    iget-object v0, p0, Lcom/xiaomi/push/ih;->c:Ljava/lang/String;

    if-eqz v0, :cond_52

    sget-object v0, Lcom/xiaomi/push/ih;->d:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/ih;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_52
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->e()Z

    move-result v0

    if-eqz v0, :cond_65

    sget-object v0, Lcom/xiaomi/push/ih;->e:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-wide v0, p0, Lcom/xiaomi/push/ih;->a:J

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/jr;->a(J)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_65
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->f()Z

    move-result v0

    if-eqz v0, :cond_78

    sget-object v0, Lcom/xiaomi/push/ih;->f:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-wide v0, p0, Lcom/xiaomi/push/ih;->b:J

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/jr;->a(J)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_78
    iget-object v0, p0, Lcom/xiaomi/push/ih;->d:Ljava/lang/String;

    if-eqz v0, :cond_8f

    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->g()Z

    move-result v0

    if-eqz v0, :cond_8f

    sget-object v0, Lcom/xiaomi/push/ih;->g:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/ih;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_8f
    iget-object v0, p0, Lcom/xiaomi/push/ih;->e:Ljava/lang/String;

    if-eqz v0, :cond_a6

    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->h()Z

    move-result v0

    if-eqz v0, :cond_a6

    sget-object v0, Lcom/xiaomi/push/ih;->h:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/ih;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_a6
    iget-object v0, p0, Lcom/xiaomi/push/ih;->f:Ljava/lang/String;

    if-eqz v0, :cond_bd

    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->i()Z

    move-result v0

    if-eqz v0, :cond_bd

    sget-object v0, Lcom/xiaomi/push/ih;->i:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/ih;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_bd
    iget-object v0, p0, Lcom/xiaomi/push/ih;->g:Ljava/lang/String;

    if-eqz v0, :cond_d4

    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->j()Z

    move-result v0

    if-eqz v0, :cond_d4

    sget-object v0, Lcom/xiaomi/push/ih;->j:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/ih;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_d4
    iget-object v0, p0, Lcom/xiaomi/push/ih;->h:Ljava/lang/String;

    if-eqz v0, :cond_eb

    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->k()Z

    move-result v0

    if-eqz v0, :cond_eb

    sget-object v0, Lcom/xiaomi/push/ih;->k:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/ih;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_eb
    iget-object v0, p0, Lcom/xiaomi/push/ih;->a:Lcom/xiaomi/push/ii;

    if-eqz v0, :cond_102

    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->l()Z

    move-result v0

    if-eqz v0, :cond_102

    sget-object v0, Lcom/xiaomi/push/ih;->l:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/ih;->a:Lcom/xiaomi/push/ii;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/ii;->b(Lcom/xiaomi/push/jr;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_102
    iget-object v0, p0, Lcom/xiaomi/push/ih;->i:Ljava/lang/String;

    if-eqz v0, :cond_119

    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->m()Z

    move-result v0

    if-eqz v0, :cond_119

    sget-object v0, Lcom/xiaomi/push/ih;->m:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/ih;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_119
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->n()Z

    move-result v0

    if-eqz v0, :cond_12c

    sget-object v0, Lcom/xiaomi/push/ih;->n:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-boolean v0, p0, Lcom/xiaomi/push/ih;->a:Z

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Z)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_12c
    iget-object v0, p0, Lcom/xiaomi/push/ih;->j:Ljava/lang/String;

    if-eqz v0, :cond_143

    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->o()Z

    move-result v0

    if-eqz v0, :cond_143

    sget-object v0, Lcom/xiaomi/push/ih;->o:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/ih;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_143
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->p()Z

    move-result v0

    if-eqz v0, :cond_156

    sget-object v0, Lcom/xiaomi/push/ih;->p:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-wide v0, p0, Lcom/xiaomi/push/ih;->c:J

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/jr;->a(J)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_156
    iget-object v0, p0, Lcom/xiaomi/push/ih;->k:Ljava/lang/String;

    if-eqz v0, :cond_16d

    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->q()Z

    move-result v0

    if-eqz v0, :cond_16d

    sget-object v0, Lcom/xiaomi/push/ih;->q:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/ih;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_16d
    iget-object v0, p0, Lcom/xiaomi/push/ih;->l:Ljava/lang/String;

    if-eqz v0, :cond_184

    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->r()Z

    move-result v0

    if-eqz v0, :cond_184

    sget-object v0, Lcom/xiaomi/push/ih;->r:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/ih;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_184
    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->c()V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()V

    return-void
.end method

.method public b(Z)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/ih;->a:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/ih;->a:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/ih;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Z)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/ih;->a:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public c()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/ih;->b:Ljava/lang/String;

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

    check-cast p1, Lcom/xiaomi/push/ih;

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/ih;->a(Lcom/xiaomi/push/ih;)I

    move-result p1

    return p1
.end method

.method public d(Z)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/ih;->a:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public d()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/ih;->c:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public e()Z
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/push/ih;->a:Ljava/util/BitSet;

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
    instance-of v1, p1, Lcom/xiaomi/push/ih;

    if-eqz v1, :cond_f

    check-cast p1, Lcom/xiaomi/push/ih;

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/ih;->a(Lcom/xiaomi/push/ih;)Z

    move-result p1

    return p1

    :cond_f
    return v0
.end method

.method public f()Z
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/push/ih;->a:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public g()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/ih;->d:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/xiaomi/push/ih;->e:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/xiaomi/push/ih;->f:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/xiaomi/push/ih;->g:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public k()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/ih;->h:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public l()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/ih;->a:Lcom/xiaomi/push/ii;

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

    iget-object v0, p0, Lcom/xiaomi/push/ih;->i:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public n()Z
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/push/ih;->a:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public o()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/ih;->j:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public p()Z
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/push/ih;->a:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public q()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/ih;->k:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/xiaomi/push/ih;->l:Ljava/lang/String;

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

    const-string v1, "PushMessage("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->a()Z

    move-result v1

    const-string v2, "null"

    if-eqz v1, :cond_21

    const-string v1, "to:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/ih;->a:Lcom/xiaomi/push/ik;

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

    iget-object v1, p0, Lcom/xiaomi/push/ih;->a:Ljava/lang/String;

    if-nez v1, :cond_36

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_39

    :cond_36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_39
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "appId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/ih;->b:Ljava/lang/String;

    if-nez v1, :cond_49

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4c

    :cond_49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "payload:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/ih;->c:Ljava/lang/String;

    if-nez v1, :cond_5c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5f

    :cond_5c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5f
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->e()Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "createAt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/xiaomi/push/ih;->a:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_72
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->f()Z

    move-result v1

    if-eqz v1, :cond_85

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ttl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/xiaomi/push/ih;->b:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_85
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->g()Z

    move-result v1

    if-eqz v1, :cond_9e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "collapseKey:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/ih;->d:Ljava/lang/String;

    if-nez v1, :cond_9b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9e

    :cond_9b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9e
    :goto_9e
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->h()Z

    move-result v1

    if-eqz v1, :cond_b7

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "packageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/ih;->e:Ljava/lang/String;

    if-nez v1, :cond_b4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b7

    :cond_b4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b7
    :goto_b7
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->i()Z

    move-result v1

    if-eqz v1, :cond_d0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "regId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/ih;->f:Ljava/lang/String;

    if-nez v1, :cond_cd

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d0

    :cond_cd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d0
    :goto_d0
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->j()Z

    move-result v1

    if-eqz v1, :cond_e9

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "category:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/ih;->g:Ljava/lang/String;

    if-nez v1, :cond_e6

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e9

    :cond_e6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e9
    :goto_e9
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->k()Z

    move-result v1

    if-eqz v1, :cond_102

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "topic:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/ih;->h:Ljava/lang/String;

    if-nez v1, :cond_ff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_102

    :cond_ff
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_102
    :goto_102
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->l()Z

    move-result v1

    if-eqz v1, :cond_11b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "metaInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/ih;->a:Lcom/xiaomi/push/ii;

    if-nez v1, :cond_118

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11b

    :cond_118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_11b
    :goto_11b
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->m()Z

    move-result v1

    if-eqz v1, :cond_134

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "aliasName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/ih;->i:Ljava/lang/String;

    if-nez v1, :cond_131

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_134

    :cond_131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_134
    :goto_134
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->n()Z

    move-result v1

    if-eqz v1, :cond_147

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isOnline:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaomi/push/ih;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_147
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->o()Z

    move-result v1

    if-eqz v1, :cond_160

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "userAccount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/ih;->j:Ljava/lang/String;

    if-nez v1, :cond_15d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_160

    :cond_15d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_160
    :goto_160
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->p()Z

    move-result v1

    if-eqz v1, :cond_173

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "miid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/xiaomi/push/ih;->c:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_173
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->q()Z

    move-result v1

    if-eqz v1, :cond_18c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "imeiMd5:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/ih;->k:Ljava/lang/String;

    if-nez v1, :cond_189

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18c

    :cond_189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18c
    :goto_18c
    invoke-virtual {p0}, Lcom/xiaomi/push/ih;->r()Z

    move-result v1

    if-eqz v1, :cond_1a5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "deviceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/ih;->l:Ljava/lang/String;

    if-nez v1, :cond_1a2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a5

    :cond_1a2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a5
    :goto_1a5
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
