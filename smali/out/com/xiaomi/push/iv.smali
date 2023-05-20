.class public Lcom/xiaomi/push/iv;
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
        "Lcom/xiaomi/push/iv;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final A:Lcom/xiaomi/push/jo;

.field private static final B:Lcom/xiaomi/push/jo;

.field private static final C:Lcom/xiaomi/push/jo;

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

.field private static final u:Lcom/xiaomi/push/jo;

.field private static final v:Lcom/xiaomi/push/jo;

.field private static final w:Lcom/xiaomi/push/jo;

.field private static final x:Lcom/xiaomi/push/jo;

.field private static final y:Lcom/xiaomi/push/jo;

.field private static final z:Lcom/xiaomi/push/jo;


# instance fields
.field public a:I

.field public a:J

.field public a:Lcom/xiaomi/push/ij;

.field public a:Lcom/xiaomi/push/ik;

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

.field public a:Z

.field public b:I

.field public b:J

.field public b:Ljava/lang/String;

.field public b:Z

.field public c:I

.field public c:Ljava/lang/String;

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    new-instance v0, Lcom/xiaomi/push/jw;

    const-string v1, "XmPushActionRegistration"

    invoke-direct {v0, v1}, Lcom/xiaomi/push/jw;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/iv;->a:Lcom/xiaomi/push/jw;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v1, 0xb

    const-string v2, ""

    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/iv;->a:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v3, 0xc

    const/4 v4, 0x2

    invoke-direct {v0, v2, v3, v4}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/iv;->b:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/4 v5, 0x3

    invoke-direct {v0, v2, v1, v5}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/iv;->c:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/4 v5, 0x4

    invoke-direct {v0, v2, v1, v5}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/iv;->d:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/4 v5, 0x5

    invoke-direct {v0, v2, v1, v5}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/iv;->e:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/4 v5, 0x6

    invoke-direct {v0, v2, v1, v5}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/iv;->f:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/4 v5, 0x7

    invoke-direct {v0, v2, v1, v5}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/iv;->g:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v5, 0x8

    invoke-direct {v0, v2, v1, v5}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/iv;->h:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v6, 0x9

    invoke-direct {v0, v2, v1, v6}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/iv;->i:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v6, 0xa

    invoke-direct {v0, v2, v1, v6}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/iv;->j:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    invoke-direct {v0, v2, v1, v1}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/iv;->k:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    invoke-direct {v0, v2, v1, v3}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/iv;->l:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v3, 0xd

    invoke-direct {v0, v2, v5, v3}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/iv;->m:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v7, 0xe

    invoke-direct {v0, v2, v5, v7}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/iv;->n:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v7, 0xf

    invoke-direct {v0, v2, v1, v7}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/iv;->o:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v7, 0x10

    invoke-direct {v0, v2, v1, v7}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/iv;->p:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v7, 0x11

    invoke-direct {v0, v2, v1, v7}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/iv;->q:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v7, 0x12

    invoke-direct {v0, v2, v1, v7}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/iv;->r:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v7, 0x13

    invoke-direct {v0, v2, v5, v7}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/iv;->s:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v7, 0x14

    invoke-direct {v0, v2, v5, v7}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/iv;->t:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v5, 0x15

    invoke-direct {v0, v2, v4, v5}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/iv;->u:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v5, 0x16

    invoke-direct {v0, v2, v6, v5}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/iv;->v:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v5, 0x17

    invoke-direct {v0, v2, v6, v5}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/iv;->w:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v5, 0x18

    invoke-direct {v0, v2, v1, v5}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/iv;->x:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v5, 0x19

    invoke-direct {v0, v2, v1, v5}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/iv;->y:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v5, 0x1a

    invoke-direct {v0, v2, v4, v5}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/iv;->z:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v5, 0x64

    invoke-direct {v0, v2, v3, v5}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/iv;->A:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v3, 0x65

    invoke-direct {v0, v2, v4, v3}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/iv;->B:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v3, 0x66

    invoke-direct {v0, v2, v1, v3}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/iv;->C:Lcom/xiaomi/push/jo;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/push/iv;->a:Ljava/util/BitSet;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/iv;->a:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/push/iv;->c:Z

    iput-boolean v0, p0, Lcom/xiaomi/push/iv;->b:Z

    return-void
.end method


# virtual methods
.method public A()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/iv;->a:Ljava/util/Map;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public B()Z
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/push/iv;->a:Ljava/util/BitSet;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public C()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/iv;->r:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public a(Lcom/xiaomi/push/iv;)I
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
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_3a

    return v0

    :cond_3a
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->a()Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/xiaomi/push/iv;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/iv;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4b

    return v0

    :cond_4b
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_62

    return v0

    :cond_62
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->b()Z

    move-result v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/xiaomi/push/iv;->a:Lcom/xiaomi/push/ik;

    iget-object v1, p1, Lcom/xiaomi/push/iv;->a:Lcom/xiaomi/push/ik;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_73

    return v0

    :cond_73
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_8a

    return v0

    :cond_8a
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->c()Z

    move-result v0

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/xiaomi/push/iv;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/iv;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_9b

    return v0

    :cond_9b
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->d()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_b2

    return v0

    :cond_b2
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->d()Z

    move-result v0

    if-eqz v0, :cond_c3

    iget-object v0, p0, Lcom/xiaomi/push/iv;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/iv;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_c3

    return v0

    :cond_c3
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->e()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_da

    return v0

    :cond_da
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->e()Z

    move-result v0

    if-eqz v0, :cond_eb

    iget-object v0, p0, Lcom/xiaomi/push/iv;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/iv;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_eb

    return v0

    :cond_eb
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->f()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->f()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_102

    return v0

    :cond_102
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->f()Z

    move-result v0

    if-eqz v0, :cond_113

    iget-object v0, p0, Lcom/xiaomi/push/iv;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/iv;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_113

    return v0

    :cond_113
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->g()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->g()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_12a

    return v0

    :cond_12a
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->g()Z

    move-result v0

    if-eqz v0, :cond_13b

    iget-object v0, p0, Lcom/xiaomi/push/iv;->f:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/iv;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_13b

    return v0

    :cond_13b
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->h()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->h()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_152

    return v0

    :cond_152
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->h()Z

    move-result v0

    if-eqz v0, :cond_163

    iget-object v0, p0, Lcom/xiaomi/push/iv;->g:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/iv;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_163

    return v0

    :cond_163
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_17a

    return v0

    :cond_17a
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->i()Z

    move-result v0

    if-eqz v0, :cond_18b

    iget-object v0, p0, Lcom/xiaomi/push/iv;->h:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/iv;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_18b

    return v0

    :cond_18b
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->j()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->j()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1a2

    return v0

    :cond_1a2
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->j()Z

    move-result v0

    if-eqz v0, :cond_1b3

    iget-object v0, p0, Lcom/xiaomi/push/iv;->i:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/iv;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1b3

    return v0

    :cond_1b3
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->k()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->k()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1ca

    return v0

    :cond_1ca
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->k()Z

    move-result v0

    if-eqz v0, :cond_1db

    iget-object v0, p0, Lcom/xiaomi/push/iv;->j:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/iv;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1db

    return v0

    :cond_1db
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->l()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->l()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1f2

    return v0

    :cond_1f2
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->l()Z

    move-result v0

    if-eqz v0, :cond_203

    iget-object v0, p0, Lcom/xiaomi/push/iv;->k:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/iv;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_203

    return v0

    :cond_203
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->m()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->m()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_21a

    return v0

    :cond_21a
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->m()Z

    move-result v0

    if-eqz v0, :cond_22b

    iget v0, p0, Lcom/xiaomi/push/iv;->a:I

    iget v1, p1, Lcom/xiaomi/push/iv;->a:I

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(II)I

    move-result v0

    if-eqz v0, :cond_22b

    return v0

    :cond_22b
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->n()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->n()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_242

    return v0

    :cond_242
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->n()Z

    move-result v0

    if-eqz v0, :cond_253

    iget v0, p0, Lcom/xiaomi/push/iv;->b:I

    iget v1, p1, Lcom/xiaomi/push/iv;->b:I

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(II)I

    move-result v0

    if-eqz v0, :cond_253

    return v0

    :cond_253
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->o()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->o()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_26a

    return v0

    :cond_26a
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->o()Z

    move-result v0

    if-eqz v0, :cond_27b

    iget-object v0, p0, Lcom/xiaomi/push/iv;->l:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/iv;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_27b

    return v0

    :cond_27b
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->p()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->p()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_292

    return v0

    :cond_292
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->p()Z

    move-result v0

    if-eqz v0, :cond_2a3

    iget-object v0, p0, Lcom/xiaomi/push/iv;->m:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/iv;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2a3

    return v0

    :cond_2a3
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->q()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->q()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_2ba

    return v0

    :cond_2ba
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->q()Z

    move-result v0

    if-eqz v0, :cond_2cb

    iget-object v0, p0, Lcom/xiaomi/push/iv;->n:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/iv;->n:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2cb

    return v0

    :cond_2cb
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->r()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->r()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_2e2

    return v0

    :cond_2e2
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->r()Z

    move-result v0

    if-eqz v0, :cond_2f3

    iget-object v0, p0, Lcom/xiaomi/push/iv;->o:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/iv;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2f3

    return v0

    :cond_2f3
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->s()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->s()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_30a

    return v0

    :cond_30a
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->s()Z

    move-result v0

    if-eqz v0, :cond_31b

    iget v0, p0, Lcom/xiaomi/push/iv;->c:I

    iget v1, p1, Lcom/xiaomi/push/iv;->c:I

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(II)I

    move-result v0

    if-eqz v0, :cond_31b

    return v0

    :cond_31b
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->t()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->t()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_332

    return v0

    :cond_332
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->t()Z

    move-result v0

    if-eqz v0, :cond_343

    iget-object v0, p0, Lcom/xiaomi/push/iv;->a:Lcom/xiaomi/push/ij;

    iget-object v1, p1, Lcom/xiaomi/push/iv;->a:Lcom/xiaomi/push/ij;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_343

    return v0

    :cond_343
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->u()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->u()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_35a

    return v0

    :cond_35a
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->u()Z

    move-result v0

    if-eqz v0, :cond_36b

    iget-boolean v0, p0, Lcom/xiaomi/push/iv;->a:Z

    iget-boolean v1, p1, Lcom/xiaomi/push/iv;->a:Z

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(ZZ)I

    move-result v0

    if-eqz v0, :cond_36b

    return v0

    :cond_36b
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->v()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->v()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_382

    return v0

    :cond_382
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->v()Z

    move-result v0

    if-eqz v0, :cond_393

    iget-wide v0, p0, Lcom/xiaomi/push/iv;->a:J

    iget-wide v2, p1, Lcom/xiaomi/push/iv;->a:J

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/push/jh;->a(JJ)I

    move-result v0

    if-eqz v0, :cond_393

    return v0

    :cond_393
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->w()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->w()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_3aa

    return v0

    :cond_3aa
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->w()Z

    move-result v0

    if-eqz v0, :cond_3bb

    iget-wide v0, p0, Lcom/xiaomi/push/iv;->b:J

    iget-wide v2, p1, Lcom/xiaomi/push/iv;->b:J

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/push/jh;->a(JJ)I

    move-result v0

    if-eqz v0, :cond_3bb

    return v0

    :cond_3bb
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->x()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->x()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_3d2

    return v0

    :cond_3d2
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->x()Z

    move-result v0

    if-eqz v0, :cond_3e3

    iget-object v0, p0, Lcom/xiaomi/push/iv;->p:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/iv;->p:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3e3

    return v0

    :cond_3e3
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->y()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->y()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_3fa

    return v0

    :cond_3fa
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->y()Z

    move-result v0

    if-eqz v0, :cond_40b

    iget-object v0, p0, Lcom/xiaomi/push/iv;->q:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/iv;->q:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_40b

    return v0

    :cond_40b
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->z()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->z()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_422

    return v0

    :cond_422
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->z()Z

    move-result v0

    if-eqz v0, :cond_433

    iget-boolean v0, p0, Lcom/xiaomi/push/iv;->b:Z

    iget-boolean v1, p1, Lcom/xiaomi/push/iv;->b:Z

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(ZZ)I

    move-result v0

    if-eqz v0, :cond_433

    return v0

    :cond_433
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->A()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->A()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_44a

    return v0

    :cond_44a
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->A()Z

    move-result v0

    if-eqz v0, :cond_45b

    iget-object v0, p0, Lcom/xiaomi/push/iv;->a:Ljava/util/Map;

    iget-object v1, p1, Lcom/xiaomi/push/iv;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    if-eqz v0, :cond_45b

    return v0

    :cond_45b
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->B()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->B()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_472

    return v0

    :cond_472
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->B()Z

    move-result v0

    if-eqz v0, :cond_483

    iget-boolean v0, p0, Lcom/xiaomi/push/iv;->c:Z

    iget-boolean v1, p1, Lcom/xiaomi/push/iv;->c:Z

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(ZZ)I

    move-result v0

    if-eqz v0, :cond_483

    return v0

    :cond_483
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->C()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->C()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_49a

    return v0

    :cond_49a
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->C()Z

    move-result v0

    if-eqz v0, :cond_4ab

    iget-object v0, p0, Lcom/xiaomi/push/iv;->r:Ljava/lang/String;

    iget-object p1, p1, Lcom/xiaomi/push/iv;->r:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_4ab

    return p1

    :cond_4ab
    const/4 p1, 0x0

    return p1
.end method

.method public a(I)Lcom/xiaomi/push/iv;
    .registers 2

    iput p1, p0, Lcom/xiaomi/push/iv;->a:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/iv;->a(Z)V

    return-object p0
.end method

.method public a(Lcom/xiaomi/push/ij;)Lcom/xiaomi/push/iv;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/push/iv;->a:Lcom/xiaomi/push/ij;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/xiaomi/push/iv;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/push/iv;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/iv;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a()V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/iv;->b:Ljava/lang/String;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/xiaomi/push/iv;->c:Ljava/lang/String;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/xiaomi/push/iv;->f:Ljava/lang/String;

    if-eqz v0, :cond_d

    return-void

    :cond_d
    new-instance v0, Lcom/xiaomi/push/js;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'token\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->toString()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->toString()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->toString()Ljava/lang/String;

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

    if-nez v1, :cond_12

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->f()V

    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->a()V

    return-void

    :cond_12
    iget-short v1, v0, Lcom/xiaomi/push/jo;->a:S

    const/16 v2, 0xa

    const/4 v3, 0x2

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/16 v6, 0xb

    packed-switch v1, :pswitch_data_1c6

    packed-switch v1, :pswitch_data_1fe

    :cond_22
    iget-byte v0, v0, Lcom/xiaomi/push/jo;->a:B

    invoke-static {p1, v0}, Lcom/xiaomi/push/ju;->a(Lcom/xiaomi/push/jr;B)V

    goto/16 :goto_1c1

    :pswitch_29
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v6, :cond_22

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/iv;->r:Ljava/lang/String;

    goto/16 :goto_1c1

    :pswitch_35
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v3, :cond_22

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/push/iv;->c:Z

    invoke-virtual {p0, v5}, Lcom/xiaomi/push/iv;->h(Z)V

    goto/16 :goto_1c1

    :pswitch_44
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    const/16 v2, 0xd

    if-ne v1, v2, :cond_22

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Lcom/xiaomi/push/jq;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    iget v2, v0, Lcom/xiaomi/push/jq;->a:I

    mul-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/xiaomi/push/iv;->a:Ljava/util/Map;

    const/4 v1, 0x0

    :goto_59
    iget v2, v0, Lcom/xiaomi/push/jq;->a:I

    if-ge v1, v2, :cond_6d

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/push/iv;->a:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_59

    :cond_6d
    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->h()V

    goto/16 :goto_1c1

    :pswitch_72
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v3, :cond_22

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/push/iv;->b:Z

    invoke-virtual {p0, v5}, Lcom/xiaomi/push/iv;->g(Z)V

    goto/16 :goto_1c1

    :pswitch_81
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v6, :cond_22

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/iv;->q:Ljava/lang/String;

    goto/16 :goto_1c1

    :pswitch_8d
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v6, :cond_22

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/iv;->p:Ljava/lang/String;

    goto/16 :goto_1c1

    :pswitch_99
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v2, :cond_22

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/push/iv;->b:J

    invoke-virtual {p0, v5}, Lcom/xiaomi/push/iv;->f(Z)V

    goto/16 :goto_1c1

    :pswitch_a8
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v2, :cond_22

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/push/iv;->a:J

    invoke-virtual {p0, v5}, Lcom/xiaomi/push/iv;->e(Z)V

    goto/16 :goto_1c1

    :pswitch_b7
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v3, :cond_22

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/push/iv;->a:Z

    invoke-virtual {p0, v5}, Lcom/xiaomi/push/iv;->d(Z)V

    goto/16 :goto_1c1

    :pswitch_c6
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v4, :cond_22

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()I

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/push/ij;->a(I)Lcom/xiaomi/push/ij;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/iv;->a:Lcom/xiaomi/push/ij;

    goto/16 :goto_1c1

    :pswitch_d6
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v4, :cond_22

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/push/iv;->c:I

    invoke-virtual {p0, v5}, Lcom/xiaomi/push/iv;->c(Z)V

    goto/16 :goto_1c1

    :pswitch_e5
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v6, :cond_22

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/iv;->o:Ljava/lang/String;

    goto/16 :goto_1c1

    :pswitch_f1
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v6, :cond_22

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/iv;->n:Ljava/lang/String;

    goto/16 :goto_1c1

    :pswitch_fd
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v6, :cond_22

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/iv;->m:Ljava/lang/String;

    goto/16 :goto_1c1

    :pswitch_109
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v6, :cond_22

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/iv;->l:Ljava/lang/String;

    goto/16 :goto_1c1

    :pswitch_115
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v4, :cond_22

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/push/iv;->b:I

    invoke-virtual {p0, v5}, Lcom/xiaomi/push/iv;->b(Z)V

    goto/16 :goto_1c1

    :pswitch_124
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v4, :cond_22

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/push/iv;->a:I

    invoke-virtual {p0, v5}, Lcom/xiaomi/push/iv;->a(Z)V

    goto/16 :goto_1c1

    :pswitch_133
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v6, :cond_22

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/iv;->k:Ljava/lang/String;

    goto/16 :goto_1c1

    :pswitch_13f
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v6, :cond_22

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/iv;->j:Ljava/lang/String;

    goto/16 :goto_1c1

    :pswitch_14b
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v6, :cond_22

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/iv;->i:Ljava/lang/String;

    goto/16 :goto_1c1

    :pswitch_157
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v6, :cond_22

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/iv;->h:Ljava/lang/String;

    goto :goto_1c1

    :pswitch_162
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v6, :cond_22

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/iv;->g:Ljava/lang/String;

    goto :goto_1c1

    :pswitch_16d
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v6, :cond_22

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/iv;->f:Ljava/lang/String;

    goto :goto_1c1

    :pswitch_178
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v6, :cond_22

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/iv;->e:Ljava/lang/String;

    goto :goto_1c1

    :pswitch_183
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v6, :cond_22

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/iv;->d:Ljava/lang/String;

    goto :goto_1c1

    :pswitch_18e
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v6, :cond_22

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/iv;->c:Ljava/lang/String;

    goto :goto_1c1

    :pswitch_199
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v6, :cond_22

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/iv;->b:Ljava/lang/String;

    goto :goto_1c1

    :pswitch_1a4
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_22

    new-instance v0, Lcom/xiaomi/push/ik;

    invoke-direct {v0}, Lcom/xiaomi/push/ik;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/iv;->a:Lcom/xiaomi/push/ik;

    iget-object v0, p0, Lcom/xiaomi/push/iv;->a:Lcom/xiaomi/push/ik;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/ik;->a(Lcom/xiaomi/push/jr;)V

    goto :goto_1c1

    :pswitch_1b7
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v6, :cond_22

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/iv;->a:Ljava/lang/String;

    :goto_1c1
    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->g()V

    goto/16 :goto_3

    :pswitch_data_1c6
    .packed-switch 0x1
        :pswitch_1b7
        :pswitch_1a4
        :pswitch_199
        :pswitch_18e
        :pswitch_183
        :pswitch_178
        :pswitch_16d
        :pswitch_162
        :pswitch_157
        :pswitch_14b
        :pswitch_13f
        :pswitch_133
        :pswitch_124
        :pswitch_115
        :pswitch_109
        :pswitch_fd
        :pswitch_f1
        :pswitch_e5
        :pswitch_d6
        :pswitch_c6
        :pswitch_b7
        :pswitch_a8
        :pswitch_99
        :pswitch_8d
        :pswitch_81
        :pswitch_72
    .end packed-switch

    :pswitch_data_1fe
    .packed-switch 0x64
        :pswitch_44
        :pswitch_35
        :pswitch_29
    .end packed-switch
.end method

.method public a(Z)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/iv;->a:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public a()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/iv;->a:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public a(Lcom/xiaomi/push/iv;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->a()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->a()Z

    move-result v2

    if-nez v1, :cond_10

    if-eqz v2, :cond_21

    :cond_10
    if-eqz v1, :cond_32f

    if-nez v2, :cond_16

    goto/16 :goto_32f

    :cond_16
    iget-object v1, p0, Lcom/xiaomi/push/iv;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/iv;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    return v0

    :cond_21
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->b()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->b()Z

    move-result v2

    if-nez v1, :cond_2d

    if-eqz v2, :cond_3e

    :cond_2d
    if-eqz v1, :cond_32f

    if-nez v2, :cond_33

    goto/16 :goto_32f

    :cond_33
    iget-object v1, p0, Lcom/xiaomi/push/iv;->a:Lcom/xiaomi/push/ik;

    iget-object v2, p1, Lcom/xiaomi/push/iv;->a:Lcom/xiaomi/push/ik;

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/ik;->a(Lcom/xiaomi/push/ik;)Z

    move-result v1

    if-nez v1, :cond_3e

    return v0

    :cond_3e
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->c()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->c()Z

    move-result v2

    if-nez v1, :cond_4a

    if-eqz v2, :cond_5b

    :cond_4a
    if-eqz v1, :cond_32f

    if-nez v2, :cond_50

    goto/16 :goto_32f

    :cond_50
    iget-object v1, p0, Lcom/xiaomi/push/iv;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/iv;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5b

    return v0

    :cond_5b
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->d()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->d()Z

    move-result v2

    if-nez v1, :cond_67

    if-eqz v2, :cond_78

    :cond_67
    if-eqz v1, :cond_32f

    if-nez v2, :cond_6d

    goto/16 :goto_32f

    :cond_6d
    iget-object v1, p0, Lcom/xiaomi/push/iv;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/iv;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    return v0

    :cond_78
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->e()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->e()Z

    move-result v2

    if-nez v1, :cond_84

    if-eqz v2, :cond_95

    :cond_84
    if-eqz v1, :cond_32f

    if-nez v2, :cond_8a

    goto/16 :goto_32f

    :cond_8a
    iget-object v1, p0, Lcom/xiaomi/push/iv;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/iv;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_95

    return v0

    :cond_95
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->f()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->f()Z

    move-result v2

    if-nez v1, :cond_a1

    if-eqz v2, :cond_b2

    :cond_a1
    if-eqz v1, :cond_32f

    if-nez v2, :cond_a7

    goto/16 :goto_32f

    :cond_a7
    iget-object v1, p0, Lcom/xiaomi/push/iv;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/iv;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b2

    return v0

    :cond_b2
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->g()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->g()Z

    move-result v2

    if-nez v1, :cond_be

    if-eqz v2, :cond_cf

    :cond_be
    if-eqz v1, :cond_32f

    if-nez v2, :cond_c4

    goto/16 :goto_32f

    :cond_c4
    iget-object v1, p0, Lcom/xiaomi/push/iv;->f:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/iv;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cf

    return v0

    :cond_cf
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->h()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->h()Z

    move-result v2

    if-nez v1, :cond_db

    if-eqz v2, :cond_ec

    :cond_db
    if-eqz v1, :cond_32f

    if-nez v2, :cond_e1

    goto/16 :goto_32f

    :cond_e1
    iget-object v1, p0, Lcom/xiaomi/push/iv;->g:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/iv;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ec

    return v0

    :cond_ec
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->i()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->i()Z

    move-result v2

    if-nez v1, :cond_f8

    if-eqz v2, :cond_109

    :cond_f8
    if-eqz v1, :cond_32f

    if-nez v2, :cond_fe

    goto/16 :goto_32f

    :cond_fe
    iget-object v1, p0, Lcom/xiaomi/push/iv;->h:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/iv;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_109

    return v0

    :cond_109
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->j()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->j()Z

    move-result v2

    if-nez v1, :cond_115

    if-eqz v2, :cond_126

    :cond_115
    if-eqz v1, :cond_32f

    if-nez v2, :cond_11b

    goto/16 :goto_32f

    :cond_11b
    iget-object v1, p0, Lcom/xiaomi/push/iv;->i:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/iv;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_126

    return v0

    :cond_126
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->k()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->k()Z

    move-result v2

    if-nez v1, :cond_132

    if-eqz v2, :cond_143

    :cond_132
    if-eqz v1, :cond_32f

    if-nez v2, :cond_138

    goto/16 :goto_32f

    :cond_138
    iget-object v1, p0, Lcom/xiaomi/push/iv;->j:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/iv;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_143

    return v0

    :cond_143
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->l()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->l()Z

    move-result v2

    if-nez v1, :cond_14f

    if-eqz v2, :cond_160

    :cond_14f
    if-eqz v1, :cond_32f

    if-nez v2, :cond_155

    goto/16 :goto_32f

    :cond_155
    iget-object v1, p0, Lcom/xiaomi/push/iv;->k:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/iv;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_160

    return v0

    :cond_160
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->m()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->m()Z

    move-result v2

    if-nez v1, :cond_16c

    if-eqz v2, :cond_179

    :cond_16c
    if-eqz v1, :cond_32f

    if-nez v2, :cond_172

    goto/16 :goto_32f

    :cond_172
    iget v1, p0, Lcom/xiaomi/push/iv;->a:I

    iget v2, p1, Lcom/xiaomi/push/iv;->a:I

    if-eq v1, v2, :cond_179

    return v0

    :cond_179
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->n()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->n()Z

    move-result v2

    if-nez v1, :cond_185

    if-eqz v2, :cond_192

    :cond_185
    if-eqz v1, :cond_32f

    if-nez v2, :cond_18b

    goto/16 :goto_32f

    :cond_18b
    iget v1, p0, Lcom/xiaomi/push/iv;->b:I

    iget v2, p1, Lcom/xiaomi/push/iv;->b:I

    if-eq v1, v2, :cond_192

    return v0

    :cond_192
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->o()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->o()Z

    move-result v2

    if-nez v1, :cond_19e

    if-eqz v2, :cond_1af

    :cond_19e
    if-eqz v1, :cond_32f

    if-nez v2, :cond_1a4

    goto/16 :goto_32f

    :cond_1a4
    iget-object v1, p0, Lcom/xiaomi/push/iv;->l:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/iv;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1af

    return v0

    :cond_1af
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->p()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->p()Z

    move-result v2

    if-nez v1, :cond_1bb

    if-eqz v2, :cond_1cc

    :cond_1bb
    if-eqz v1, :cond_32f

    if-nez v2, :cond_1c1

    goto/16 :goto_32f

    :cond_1c1
    iget-object v1, p0, Lcom/xiaomi/push/iv;->m:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/iv;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1cc

    return v0

    :cond_1cc
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->q()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->q()Z

    move-result v2

    if-nez v1, :cond_1d8

    if-eqz v2, :cond_1e9

    :cond_1d8
    if-eqz v1, :cond_32f

    if-nez v2, :cond_1de

    goto/16 :goto_32f

    :cond_1de
    iget-object v1, p0, Lcom/xiaomi/push/iv;->n:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/iv;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e9

    return v0

    :cond_1e9
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->r()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->r()Z

    move-result v2

    if-nez v1, :cond_1f5

    if-eqz v2, :cond_206

    :cond_1f5
    if-eqz v1, :cond_32f

    if-nez v2, :cond_1fb

    goto/16 :goto_32f

    :cond_1fb
    iget-object v1, p0, Lcom/xiaomi/push/iv;->o:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/iv;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_206

    return v0

    :cond_206
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->s()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->s()Z

    move-result v2

    if-nez v1, :cond_212

    if-eqz v2, :cond_21f

    :cond_212
    if-eqz v1, :cond_32f

    if-nez v2, :cond_218

    goto/16 :goto_32f

    :cond_218
    iget v1, p0, Lcom/xiaomi/push/iv;->c:I

    iget v2, p1, Lcom/xiaomi/push/iv;->c:I

    if-eq v1, v2, :cond_21f

    return v0

    :cond_21f
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->t()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->t()Z

    move-result v2

    if-nez v1, :cond_22b

    if-eqz v2, :cond_23c

    :cond_22b
    if-eqz v1, :cond_32f

    if-nez v2, :cond_231

    goto/16 :goto_32f

    :cond_231
    iget-object v1, p0, Lcom/xiaomi/push/iv;->a:Lcom/xiaomi/push/ij;

    iget-object v2, p1, Lcom/xiaomi/push/iv;->a:Lcom/xiaomi/push/ij;

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/ij;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23c

    return v0

    :cond_23c
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->u()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->u()Z

    move-result v2

    if-nez v1, :cond_248

    if-eqz v2, :cond_255

    :cond_248
    if-eqz v1, :cond_32f

    if-nez v2, :cond_24e

    goto/16 :goto_32f

    :cond_24e
    iget-boolean v1, p0, Lcom/xiaomi/push/iv;->a:Z

    iget-boolean v2, p1, Lcom/xiaomi/push/iv;->a:Z

    if-eq v1, v2, :cond_255

    return v0

    :cond_255
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->v()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->v()Z

    move-result v2

    if-nez v1, :cond_261

    if-eqz v2, :cond_270

    :cond_261
    if-eqz v1, :cond_32f

    if-nez v2, :cond_267

    goto/16 :goto_32f

    :cond_267
    iget-wide v1, p0, Lcom/xiaomi/push/iv;->a:J

    iget-wide v3, p1, Lcom/xiaomi/push/iv;->a:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_270

    return v0

    :cond_270
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->w()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->w()Z

    move-result v2

    if-nez v1, :cond_27c

    if-eqz v2, :cond_28b

    :cond_27c
    if-eqz v1, :cond_32f

    if-nez v2, :cond_282

    goto/16 :goto_32f

    :cond_282
    iget-wide v1, p0, Lcom/xiaomi/push/iv;->b:J

    iget-wide v3, p1, Lcom/xiaomi/push/iv;->b:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_28b

    return v0

    :cond_28b
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->x()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->x()Z

    move-result v2

    if-nez v1, :cond_297

    if-eqz v2, :cond_2a8

    :cond_297
    if-eqz v1, :cond_32f

    if-nez v2, :cond_29d

    goto/16 :goto_32f

    :cond_29d
    iget-object v1, p0, Lcom/xiaomi/push/iv;->p:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/iv;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a8

    return v0

    :cond_2a8
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->y()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->y()Z

    move-result v2

    if-nez v1, :cond_2b4

    if-eqz v2, :cond_2c5

    :cond_2b4
    if-eqz v1, :cond_32f

    if-nez v2, :cond_2ba

    goto/16 :goto_32f

    :cond_2ba
    iget-object v1, p0, Lcom/xiaomi/push/iv;->q:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/iv;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c5

    return v0

    :cond_2c5
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->z()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->z()Z

    move-result v2

    if-nez v1, :cond_2d1

    if-eqz v2, :cond_2dd

    :cond_2d1
    if-eqz v1, :cond_32f

    if-nez v2, :cond_2d6

    goto :goto_32f

    :cond_2d6
    iget-boolean v1, p0, Lcom/xiaomi/push/iv;->b:Z

    iget-boolean v2, p1, Lcom/xiaomi/push/iv;->b:Z

    if-eq v1, v2, :cond_2dd

    return v0

    :cond_2dd
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->A()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->A()Z

    move-result v2

    if-nez v1, :cond_2e9

    if-eqz v2, :cond_2f9

    :cond_2e9
    if-eqz v1, :cond_32f

    if-nez v2, :cond_2ee

    goto :goto_32f

    :cond_2ee
    iget-object v1, p0, Lcom/xiaomi/push/iv;->a:Ljava/util/Map;

    iget-object v2, p1, Lcom/xiaomi/push/iv;->a:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f9

    return v0

    :cond_2f9
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->B()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->B()Z

    move-result v2

    if-nez v1, :cond_305

    if-eqz v2, :cond_311

    :cond_305
    if-eqz v1, :cond_32f

    if-nez v2, :cond_30a

    goto :goto_32f

    :cond_30a
    iget-boolean v1, p0, Lcom/xiaomi/push/iv;->c:Z

    iget-boolean v2, p1, Lcom/xiaomi/push/iv;->c:Z

    if-eq v1, v2, :cond_311

    return v0

    :cond_311
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->C()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->C()Z

    move-result v2

    if-nez v1, :cond_31d

    if-eqz v2, :cond_32d

    :cond_31d
    if-eqz v1, :cond_32f

    if-nez v2, :cond_322

    goto :goto_32f

    :cond_322
    iget-object v1, p0, Lcom/xiaomi/push/iv;->r:Ljava/lang/String;

    iget-object p1, p1, Lcom/xiaomi/push/iv;->r:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_32d

    return v0

    :cond_32d
    const/4 p1, 0x1

    return p1

    :cond_32f
    :goto_32f
    return v0
.end method

.method public b(I)Lcom/xiaomi/push/iv;
    .registers 2

    iput p1, p0, Lcom/xiaomi/push/iv;->b:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/iv;->b(Z)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/xiaomi/push/iv;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/push/iv;->c:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/iv;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Lcom/xiaomi/push/jr;)V
    .registers 5

    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->a()V

    sget-object v0, Lcom/xiaomi/push/iv;->a:Lcom/xiaomi/push/jw;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jw;)V

    iget-object v0, p0, Lcom/xiaomi/push/iv;->a:Ljava/lang/String;

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->a()Z

    move-result v0

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/xiaomi/push/iv;->a:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/iv;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_1f
    iget-object v0, p0, Lcom/xiaomi/push/iv;->a:Lcom/xiaomi/push/ik;

    if-eqz v0, :cond_36

    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->b()Z

    move-result v0

    if-eqz v0, :cond_36

    sget-object v0, Lcom/xiaomi/push/iv;->b:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/iv;->a:Lcom/xiaomi/push/ik;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/ik;->b(Lcom/xiaomi/push/jr;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_36
    iget-object v0, p0, Lcom/xiaomi/push/iv;->b:Ljava/lang/String;

    if-eqz v0, :cond_47

    sget-object v0, Lcom/xiaomi/push/iv;->c:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/iv;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_47
    iget-object v0, p0, Lcom/xiaomi/push/iv;->c:Ljava/lang/String;

    if-eqz v0, :cond_58

    sget-object v0, Lcom/xiaomi/push/iv;->d:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/iv;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_58
    iget-object v0, p0, Lcom/xiaomi/push/iv;->d:Ljava/lang/String;

    if-eqz v0, :cond_6f

    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->e()Z

    move-result v0

    if-eqz v0, :cond_6f

    sget-object v0, Lcom/xiaomi/push/iv;->e:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/iv;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_6f
    iget-object v0, p0, Lcom/xiaomi/push/iv;->e:Ljava/lang/String;

    if-eqz v0, :cond_86

    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->f()Z

    move-result v0

    if-eqz v0, :cond_86

    sget-object v0, Lcom/xiaomi/push/iv;->f:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/iv;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_86
    iget-object v0, p0, Lcom/xiaomi/push/iv;->f:Ljava/lang/String;

    if-eqz v0, :cond_97

    sget-object v0, Lcom/xiaomi/push/iv;->g:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/iv;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_97
    iget-object v0, p0, Lcom/xiaomi/push/iv;->g:Ljava/lang/String;

    if-eqz v0, :cond_ae

    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->h()Z

    move-result v0

    if-eqz v0, :cond_ae

    sget-object v0, Lcom/xiaomi/push/iv;->h:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/iv;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_ae
    iget-object v0, p0, Lcom/xiaomi/push/iv;->h:Ljava/lang/String;

    if-eqz v0, :cond_c5

    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->i()Z

    move-result v0

    if-eqz v0, :cond_c5

    sget-object v0, Lcom/xiaomi/push/iv;->i:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/iv;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_c5
    iget-object v0, p0, Lcom/xiaomi/push/iv;->i:Ljava/lang/String;

    if-eqz v0, :cond_dc

    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->j()Z

    move-result v0

    if-eqz v0, :cond_dc

    sget-object v0, Lcom/xiaomi/push/iv;->j:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/iv;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_dc
    iget-object v0, p0, Lcom/xiaomi/push/iv;->j:Ljava/lang/String;

    if-eqz v0, :cond_f3

    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->k()Z

    move-result v0

    if-eqz v0, :cond_f3

    sget-object v0, Lcom/xiaomi/push/iv;->k:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/iv;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_f3
    iget-object v0, p0, Lcom/xiaomi/push/iv;->k:Ljava/lang/String;

    if-eqz v0, :cond_10a

    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->l()Z

    move-result v0

    if-eqz v0, :cond_10a

    sget-object v0, Lcom/xiaomi/push/iv;->l:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/iv;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_10a
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->m()Z

    move-result v0

    if-eqz v0, :cond_11d

    sget-object v0, Lcom/xiaomi/push/iv;->m:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget v0, p0, Lcom/xiaomi/push/iv;->a:I

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(I)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_11d
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->n()Z

    move-result v0

    if-eqz v0, :cond_130

    sget-object v0, Lcom/xiaomi/push/iv;->n:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget v0, p0, Lcom/xiaomi/push/iv;->b:I

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(I)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_130
    iget-object v0, p0, Lcom/xiaomi/push/iv;->l:Ljava/lang/String;

    if-eqz v0, :cond_147

    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->o()Z

    move-result v0

    if-eqz v0, :cond_147

    sget-object v0, Lcom/xiaomi/push/iv;->o:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/iv;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_147
    iget-object v0, p0, Lcom/xiaomi/push/iv;->m:Ljava/lang/String;

    if-eqz v0, :cond_15e

    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->p()Z

    move-result v0

    if-eqz v0, :cond_15e

    sget-object v0, Lcom/xiaomi/push/iv;->p:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/iv;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_15e
    iget-object v0, p0, Lcom/xiaomi/push/iv;->n:Ljava/lang/String;

    if-eqz v0, :cond_175

    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->q()Z

    move-result v0

    if-eqz v0, :cond_175

    sget-object v0, Lcom/xiaomi/push/iv;->q:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/iv;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_175
    iget-object v0, p0, Lcom/xiaomi/push/iv;->o:Ljava/lang/String;

    if-eqz v0, :cond_18c

    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->r()Z

    move-result v0

    if-eqz v0, :cond_18c

    sget-object v0, Lcom/xiaomi/push/iv;->r:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/iv;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_18c
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->s()Z

    move-result v0

    if-eqz v0, :cond_19f

    sget-object v0, Lcom/xiaomi/push/iv;->s:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget v0, p0, Lcom/xiaomi/push/iv;->c:I

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(I)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_19f
    iget-object v0, p0, Lcom/xiaomi/push/iv;->a:Lcom/xiaomi/push/ij;

    if-eqz v0, :cond_1ba

    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->t()Z

    move-result v0

    if-eqz v0, :cond_1ba

    sget-object v0, Lcom/xiaomi/push/iv;->t:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/iv;->a:Lcom/xiaomi/push/ij;

    invoke-virtual {v0}, Lcom/xiaomi/push/ij;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(I)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_1ba
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->u()Z

    move-result v0

    if-eqz v0, :cond_1cd

    sget-object v0, Lcom/xiaomi/push/iv;->u:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-boolean v0, p0, Lcom/xiaomi/push/iv;->a:Z

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Z)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_1cd
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->v()Z

    move-result v0

    if-eqz v0, :cond_1e0

    sget-object v0, Lcom/xiaomi/push/iv;->v:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-wide v0, p0, Lcom/xiaomi/push/iv;->a:J

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/jr;->a(J)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_1e0
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->w()Z

    move-result v0

    if-eqz v0, :cond_1f3

    sget-object v0, Lcom/xiaomi/push/iv;->w:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-wide v0, p0, Lcom/xiaomi/push/iv;->b:J

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/jr;->a(J)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_1f3
    iget-object v0, p0, Lcom/xiaomi/push/iv;->p:Ljava/lang/String;

    if-eqz v0, :cond_20a

    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->x()Z

    move-result v0

    if-eqz v0, :cond_20a

    sget-object v0, Lcom/xiaomi/push/iv;->x:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/iv;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_20a
    iget-object v0, p0, Lcom/xiaomi/push/iv;->q:Ljava/lang/String;

    if-eqz v0, :cond_221

    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->y()Z

    move-result v0

    if-eqz v0, :cond_221

    sget-object v0, Lcom/xiaomi/push/iv;->y:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/iv;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_221
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->z()Z

    move-result v0

    if-eqz v0, :cond_234

    sget-object v0, Lcom/xiaomi/push/iv;->z:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-boolean v0, p0, Lcom/xiaomi/push/iv;->b:Z

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Z)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_234
    iget-object v0, p0, Lcom/xiaomi/push/iv;->a:Ljava/util/Map;

    if-eqz v0, :cond_282

    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->A()Z

    move-result v0

    if-eqz v0, :cond_282

    sget-object v0, Lcom/xiaomi/push/iv;->A:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    new-instance v0, Lcom/xiaomi/push/jq;

    iget-object v1, p0, Lcom/xiaomi/push/iv;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/16 v2, 0xb

    invoke-direct {v0, v2, v2, v1}, Lcom/xiaomi/push/jq;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jq;)V

    iget-object v0, p0, Lcom/xiaomi/push/iv;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27c

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

    goto :goto_25d

    :cond_27c
    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->d()V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_282
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->B()Z

    move-result v0

    if-eqz v0, :cond_295

    sget-object v0, Lcom/xiaomi/push/iv;->B:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-boolean v0, p0, Lcom/xiaomi/push/iv;->c:Z

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Z)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_295
    iget-object v0, p0, Lcom/xiaomi/push/iv;->r:Ljava/lang/String;

    if-eqz v0, :cond_2ac

    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->C()Z

    move-result v0

    if-eqz v0, :cond_2ac

    sget-object v0, Lcom/xiaomi/push/iv;->C:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/iv;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_2ac
    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->c()V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()V

    return-void
.end method

.method public b(Z)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/iv;->a:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/iv;->a:Lcom/xiaomi/push/ik;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public c(I)Lcom/xiaomi/push/iv;
    .registers 2

    iput p1, p0, Lcom/xiaomi/push/iv;->c:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/iv;->c(Z)V

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/xiaomi/push/iv;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/push/iv;->d:Ljava/lang/String;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/iv;->f:Ljava/lang/String;

    return-object v0
.end method

.method public c(Z)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/iv;->a:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public c()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/iv;->b:Ljava/lang/String;

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

    check-cast p1, Lcom/xiaomi/push/iv;

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/iv;->a(Lcom/xiaomi/push/iv;)I

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/String;)Lcom/xiaomi/push/iv;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/push/iv;->e:Ljava/lang/String;

    return-object p0
.end method

.method public d(Z)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/iv;->a:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public d()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/iv;->c:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public e(Ljava/lang/String;)Lcom/xiaomi/push/iv;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/push/iv;->f:Ljava/lang/String;

    return-object p0
.end method

.method public e(Z)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/iv;->a:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public e()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/iv;->d:Ljava/lang/String;

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
    instance-of v1, p1, Lcom/xiaomi/push/iv;

    if-eqz v1, :cond_f

    check-cast p1, Lcom/xiaomi/push/iv;

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/iv;->a(Lcom/xiaomi/push/iv;)Z

    move-result p1

    return p1

    :cond_f
    return v0
.end method

.method public f(Ljava/lang/String;)Lcom/xiaomi/push/iv;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/push/iv;->g:Ljava/lang/String;

    return-object p0
.end method

.method public f(Z)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/iv;->a:Ljava/util/BitSet;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public f()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/iv;->e:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public g(Ljava/lang/String;)Lcom/xiaomi/push/iv;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/push/iv;->h:Ljava/lang/String;

    return-object p0
.end method

.method public g(Z)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/iv;->a:Ljava/util/BitSet;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public g()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/iv;->f:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public h(Ljava/lang/String;)Lcom/xiaomi/push/iv;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/push/iv;->k:Ljava/lang/String;

    return-object p0
.end method

.method public h(Z)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/iv;->a:Ljava/util/BitSet;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public h()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/iv;->g:Ljava/lang/String;

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

.method public i(Ljava/lang/String;)Lcom/xiaomi/push/iv;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/push/iv;->o:Ljava/lang/String;

    return-object p0
.end method

.method public i()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/iv;->h:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/xiaomi/push/iv;->i:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/xiaomi/push/iv;->j:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/xiaomi/push/iv;->k:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public m()Z
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/push/iv;->a:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public n()Z
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/push/iv;->a:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public o()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/iv;->l:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public p()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/iv;->m:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public q()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/iv;->n:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/xiaomi/push/iv;->o:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/xiaomi/push/iv;->a:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public t()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/iv;->a:Lcom/xiaomi/push/ij;

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

    const-string v1, "XmPushActionRegistration("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->a()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "null"

    if-eqz v1, :cond_22

    const-string v1, "debug:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/iv;->a:Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->b()Z

    move-result v4

    const-string v5, ", "

    if-eqz v4, :cond_41

    if-nez v1, :cond_30

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_30
    const-string v1, "target:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/iv;->a:Lcom/xiaomi/push/ik;

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

    iget-object v1, p0, Lcom/xiaomi/push/iv;->b:Ljava/lang/String;

    if-nez v1, :cond_53

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_56

    :cond_53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_56
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "appId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/iv;->c:Ljava/lang/String;

    if-nez v1, :cond_66

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_69

    :cond_66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_69
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->e()Z

    move-result v1

    if-eqz v1, :cond_82

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "appVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/iv;->d:Ljava/lang/String;

    if-nez v1, :cond_7f

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_82

    :cond_7f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_82
    :goto_82
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->f()Z

    move-result v1

    if-eqz v1, :cond_9b

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "packageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/iv;->e:Ljava/lang/String;

    if-nez v1, :cond_98

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9b

    :cond_98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9b
    :goto_9b
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "token:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/iv;->f:Ljava/lang/String;

    if-nez v1, :cond_ab

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ae

    :cond_ab
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_ae
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->h()Z

    move-result v1

    if-eqz v1, :cond_c7

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "deviceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/iv;->g:Ljava/lang/String;

    if-nez v1, :cond_c4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c7

    :cond_c4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c7
    :goto_c7
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->i()Z

    move-result v1

    if-eqz v1, :cond_e0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "aliasName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/iv;->h:Ljava/lang/String;

    if-nez v1, :cond_dd

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e0

    :cond_dd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e0
    :goto_e0
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->j()Z

    move-result v1

    if-eqz v1, :cond_f9

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "sdkVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/iv;->i:Ljava/lang/String;

    if-nez v1, :cond_f6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f9

    :cond_f6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f9
    :goto_f9
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->k()Z

    move-result v1

    if-eqz v1, :cond_112

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "regId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/iv;->j:Ljava/lang/String;

    if-nez v1, :cond_10f

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_112

    :cond_10f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_112
    :goto_112
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->l()Z

    move-result v1

    if-eqz v1, :cond_12b

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "pushSdkVersionName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/iv;->k:Ljava/lang/String;

    if-nez v1, :cond_128

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12b

    :cond_128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12b
    :goto_12b
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->m()Z

    move-result v1

    if-eqz v1, :cond_13e

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "pushSdkVersionCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/push/iv;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_13e
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->n()Z

    move-result v1

    if-eqz v1, :cond_151

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "appVersionCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/push/iv;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_151
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->o()Z

    move-result v1

    if-eqz v1, :cond_16a

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "androidId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/iv;->l:Ljava/lang/String;

    if-nez v1, :cond_167

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16a

    :cond_167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16a
    :goto_16a
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->p()Z

    move-result v1

    if-eqz v1, :cond_183

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "imei:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/iv;->m:Ljava/lang/String;

    if-nez v1, :cond_180

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_183

    :cond_180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_183
    :goto_183
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->q()Z

    move-result v1

    if-eqz v1, :cond_19c

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "serial:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/iv;->n:Ljava/lang/String;

    if-nez v1, :cond_199

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19c

    :cond_199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19c
    :goto_19c
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->r()Z

    move-result v1

    if-eqz v1, :cond_1b5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "imeiMd5:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/iv;->o:Ljava/lang/String;

    if-nez v1, :cond_1b2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b5

    :cond_1b2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b5
    :goto_1b5
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->s()Z

    move-result v1

    if-eqz v1, :cond_1c8

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "spaceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/push/iv;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1c8
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->t()Z

    move-result v1

    if-eqz v1, :cond_1e1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/iv;->a:Lcom/xiaomi/push/ij;

    if-nez v1, :cond_1de

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e1

    :cond_1de
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1e1
    :goto_1e1
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->u()Z

    move-result v1

    if-eqz v1, :cond_1f4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "validateToken:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaomi/push/iv;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_1f4
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->v()Z

    move-result v1

    if-eqz v1, :cond_207

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "miid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/push/iv;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_207
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->w()Z

    move-result v1

    if-eqz v1, :cond_21a

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "createdTs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/push/iv;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_21a
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->x()Z

    move-result v1

    if-eqz v1, :cond_233

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "subImei:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/iv;->p:Ljava/lang/String;

    if-nez v1, :cond_230

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_233

    :cond_230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_233
    :goto_233
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->y()Z

    move-result v1

    if-eqz v1, :cond_24c

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "subImeiMd5:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/iv;->q:Ljava/lang/String;

    if-nez v1, :cond_249

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24c

    :cond_249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_24c
    :goto_24c
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->z()Z

    move-result v1

    if-eqz v1, :cond_25f

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isHybridFrame:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaomi/push/iv;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_25f
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->A()Z

    move-result v1

    if-eqz v1, :cond_278

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "connectionAttrs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/iv;->a:Ljava/util/Map;

    if-nez v1, :cond_275

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_278

    :cond_275
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_278
    :goto_278
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->B()Z

    move-result v1

    if-eqz v1, :cond_28b

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "cleanOldRegInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaomi/push/iv;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_28b
    invoke-virtual {p0}, Lcom/xiaomi/push/iv;->C()Z

    move-result v1

    if-eqz v1, :cond_2a4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "oldRegId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/iv;->r:Ljava/lang/String;

    if-nez v1, :cond_2a1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2a4

    :cond_2a1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2a4
    :goto_2a4
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/push/iv;->a:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public v()Z
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/push/iv;->a:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public w()Z
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/push/iv;->a:Ljava/util/BitSet;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public x()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/iv;->p:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public y()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/iv;->q:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public z()Z
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/push/iv;->a:Ljava/util/BitSet;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method
