.class public Lcom/xiaomi/push/ii;
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
        "Lcom/xiaomi/push/ii;",
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


# instance fields
.field public a:I

.field public a:J

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

.field public b:Ljava/lang/String;

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:I

.field public c:Ljava/lang/String;

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/xiaomi/push/jw;

    const-string v1, "PushMetaInfo"

    invoke-direct {v0, v1}, Lcom/xiaomi/push/jw;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/ii;->a:Lcom/xiaomi/push/jw;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v1, 0xb

    const-string v2, ""

    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ii;->a:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/4 v3, 0x2

    const/16 v4, 0xa

    invoke-direct {v0, v2, v4, v3}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ii;->b:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/4 v5, 0x3

    invoke-direct {v0, v2, v1, v5}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ii;->c:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/4 v5, 0x4

    invoke-direct {v0, v2, v1, v5}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ii;->d:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/4 v5, 0x5

    invoke-direct {v0, v2, v1, v5}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ii;->e:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v5, 0x8

    const/4 v6, 0x6

    invoke-direct {v0, v2, v5, v6}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ii;->f:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/4 v6, 0x7

    invoke-direct {v0, v2, v1, v6}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ii;->g:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    invoke-direct {v0, v2, v5, v5}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ii;->h:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v6, 0x9

    invoke-direct {v0, v2, v5, v6}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ii;->i:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v5, 0xd

    invoke-direct {v0, v2, v5, v4}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ii;->j:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    invoke-direct {v0, v2, v5, v1}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ii;->k:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v1, 0xc

    invoke-direct {v0, v2, v3, v1}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ii;->l:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    invoke-direct {v0, v2, v5, v5}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ii;->m:Lcom/xiaomi/push/jo;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/push/ii;->a:Ljava/util/BitSet;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/push/ii;->a:Z

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/push/ii;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/push/ii;->a:Ljava/util/BitSet;

    iget-object v0, p0, Lcom/xiaomi/push/ii;->a:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    iget-object v0, p0, Lcom/xiaomi/push/ii;->a:Ljava/util/BitSet;

    iget-object v1, p1, Lcom/xiaomi/push/ii;->a:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/ii;->a()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p1, Lcom/xiaomi/push/ii;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/push/ii;->a:Ljava/lang/String;

    :cond_21
    iget-wide v0, p1, Lcom/xiaomi/push/ii;->a:J

    iput-wide v0, p0, Lcom/xiaomi/push/ii;->a:J

    invoke-virtual {p1}, Lcom/xiaomi/push/ii;->c()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p1, Lcom/xiaomi/push/ii;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/push/ii;->b:Ljava/lang/String;

    :cond_2f
    invoke-virtual {p1}, Lcom/xiaomi/push/ii;->d()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p1, Lcom/xiaomi/push/ii;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/push/ii;->c:Ljava/lang/String;

    :cond_39
    invoke-virtual {p1}, Lcom/xiaomi/push/ii;->e()Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p1, Lcom/xiaomi/push/ii;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/push/ii;->d:Ljava/lang/String;

    :cond_43
    iget v0, p1, Lcom/xiaomi/push/ii;->a:I

    iput v0, p0, Lcom/xiaomi/push/ii;->a:I

    invoke-virtual {p1}, Lcom/xiaomi/push/ii;->g()Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p1, Lcom/xiaomi/push/ii;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/push/ii;->e:Ljava/lang/String;

    :cond_51
    iget v0, p1, Lcom/xiaomi/push/ii;->b:I

    iput v0, p0, Lcom/xiaomi/push/ii;->b:I

    iget v0, p1, Lcom/xiaomi/push/ii;->c:I

    iput v0, p0, Lcom/xiaomi/push/ii;->c:I

    invoke-virtual {p1}, Lcom/xiaomi/push/ii;->j()Z

    move-result v0

    if-eqz v0, :cond_8c

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p1, Lcom/xiaomi/push/ii;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6e

    :cond_8a
    iput-object v0, p0, Lcom/xiaomi/push/ii;->a:Ljava/util/Map;

    :cond_8c
    invoke-virtual {p1}, Lcom/xiaomi/push/ii;->k()Z

    move-result v0

    if-eqz v0, :cond_bf

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p1, Lcom/xiaomi/push/ii;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_bd

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a1

    :cond_bd
    iput-object v0, p0, Lcom/xiaomi/push/ii;->b:Ljava/util/Map;

    :cond_bf
    iget-boolean v0, p1, Lcom/xiaomi/push/ii;->a:Z

    iput-boolean v0, p0, Lcom/xiaomi/push/ii;->a:Z

    invoke-virtual {p1}, Lcom/xiaomi/push/ii;->n()Z

    move-result v0

    if-eqz v0, :cond_f6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p1, p1, Lcom/xiaomi/push/ii;->c:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d8

    :cond_f4
    iput-object v0, p0, Lcom/xiaomi/push/ii;->c:Ljava/util/Map;

    :cond_f6
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/xiaomi/push/ii;->a:I

    return v0
.end method

.method public a(Lcom/xiaomi/push/ii;)I
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
    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ii;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_3a

    return v0

    :cond_3a
    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->a()Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/xiaomi/push/ii;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/ii;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4b

    return v0

    :cond_4b
    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ii;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_62

    return v0

    :cond_62
    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->b()Z

    move-result v0

    if-eqz v0, :cond_73

    iget-wide v0, p0, Lcom/xiaomi/push/ii;->a:J

    iget-wide v2, p1, Lcom/xiaomi/push/ii;->a:J

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/push/jh;->a(JJ)I

    move-result v0

    if-eqz v0, :cond_73

    return v0

    :cond_73
    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ii;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_8a

    return v0

    :cond_8a
    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->c()Z

    move-result v0

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/xiaomi/push/ii;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/ii;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_9b

    return v0

    :cond_9b
    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ii;->d()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_b2

    return v0

    :cond_b2
    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->d()Z

    move-result v0

    if-eqz v0, :cond_c3

    iget-object v0, p0, Lcom/xiaomi/push/ii;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/ii;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_c3

    return v0

    :cond_c3
    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ii;->e()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_da

    return v0

    :cond_da
    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->e()Z

    move-result v0

    if-eqz v0, :cond_eb

    iget-object v0, p0, Lcom/xiaomi/push/ii;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/ii;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_eb

    return v0

    :cond_eb
    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->f()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ii;->f()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_102

    return v0

    :cond_102
    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->f()Z

    move-result v0

    if-eqz v0, :cond_113

    iget v0, p0, Lcom/xiaomi/push/ii;->a:I

    iget v1, p1, Lcom/xiaomi/push/ii;->a:I

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(II)I

    move-result v0

    if-eqz v0, :cond_113

    return v0

    :cond_113
    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->g()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ii;->g()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_12a

    return v0

    :cond_12a
    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->g()Z

    move-result v0

    if-eqz v0, :cond_13b

    iget-object v0, p0, Lcom/xiaomi/push/ii;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/ii;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_13b

    return v0

    :cond_13b
    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->h()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ii;->h()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_152

    return v0

    :cond_152
    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->h()Z

    move-result v0

    if-eqz v0, :cond_163

    iget v0, p0, Lcom/xiaomi/push/ii;->b:I

    iget v1, p1, Lcom/xiaomi/push/ii;->b:I

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(II)I

    move-result v0

    if-eqz v0, :cond_163

    return v0

    :cond_163
    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ii;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_17a

    return v0

    :cond_17a
    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->i()Z

    move-result v0

    if-eqz v0, :cond_18b

    iget v0, p0, Lcom/xiaomi/push/ii;->c:I

    iget v1, p1, Lcom/xiaomi/push/ii;->c:I

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(II)I

    move-result v0

    if-eqz v0, :cond_18b

    return v0

    :cond_18b
    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->j()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ii;->j()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1a2

    return v0

    :cond_1a2
    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->j()Z

    move-result v0

    if-eqz v0, :cond_1b3

    iget-object v0, p0, Lcom/xiaomi/push/ii;->a:Ljava/util/Map;

    iget-object v1, p1, Lcom/xiaomi/push/ii;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    if-eqz v0, :cond_1b3

    return v0

    :cond_1b3
    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->k()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ii;->k()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1ca

    return v0

    :cond_1ca
    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->k()Z

    move-result v0

    if-eqz v0, :cond_1db

    iget-object v0, p0, Lcom/xiaomi/push/ii;->b:Ljava/util/Map;

    iget-object v1, p1, Lcom/xiaomi/push/ii;->b:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    if-eqz v0, :cond_1db

    return v0

    :cond_1db
    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->m()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ii;->m()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1f2

    return v0

    :cond_1f2
    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->m()Z

    move-result v0

    if-eqz v0, :cond_203

    iget-boolean v0, p0, Lcom/xiaomi/push/ii;->a:Z

    iget-boolean v1, p1, Lcom/xiaomi/push/ii;->a:Z

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(ZZ)I

    move-result v0

    if-eqz v0, :cond_203

    return v0

    :cond_203
    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->n()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ii;->n()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_21a

    return v0

    :cond_21a
    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->n()Z

    move-result v0

    if-eqz v0, :cond_22b

    iget-object v0, p0, Lcom/xiaomi/push/ii;->c:Ljava/util/Map;

    iget-object p1, p1, Lcom/xiaomi/push/ii;->c:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/xiaomi/push/jh;->a(Ljava/util/Map;Ljava/util/Map;)I

    move-result p1

    if-eqz p1, :cond_22b

    return p1

    :cond_22b
    const/4 p1, 0x0

    return p1
.end method

.method public a()J
    .registers 3

    iget-wide v0, p0, Lcom/xiaomi/push/ii;->a:J

    return-wide v0
.end method

.method public a()Lcom/xiaomi/push/ii;
    .registers 2

    new-instance v0, Lcom/xiaomi/push/ii;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/ii;-><init>(Lcom/xiaomi/push/ii;)V

    return-object v0
.end method

.method public a(I)Lcom/xiaomi/push/ii;
    .registers 2

    iput p1, p0, Lcom/xiaomi/push/ii;->a:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/ii;->b(Z)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/xiaomi/push/ii;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/push/ii;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/xiaomi/push/ii;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaomi/push/ii;"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/push/ii;->a:Ljava/util/Map;

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/ii;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/xiaomi/push/ii;->a:Ljava/util/Map;

    return-object v0
.end method

.method public a()V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/ii;->a:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/xiaomi/push/js;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/push/js;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/xiaomi/push/jr;)V
    .registers 10

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Lcom/xiaomi/push/jw;

    :goto_3
    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Lcom/xiaomi/push/jo;

    move-result-object v0

    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-nez v1, :cond_33

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->f()V

    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->b()Z

    move-result p1

    if-eqz p1, :cond_18

    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->a()V

    return-void

    :cond_18
    new-instance p1, Lcom/xiaomi/push/js;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Required field \'messageTs\' was not found in serialized data! Struct: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/xiaomi/push/js;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_33
    iget-short v1, v0, Lcom/xiaomi/push/jo;->a:S

    const/4 v2, 0x0

    const/16 v3, 0xd

    const/16 v4, 0x8

    const/4 v5, 0x2

    const/16 v6, 0xb

    const/4 v7, 0x1

    packed-switch v1, :pswitch_data_144

    :cond_41
    iget-byte v0, v0, Lcom/xiaomi/push/jo;->a:B

    invoke-static {p1, v0}, Lcom/xiaomi/push/ju;->a(Lcom/xiaomi/push/jr;B)V

    goto/16 :goto_13e

    :pswitch_48
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v3, :cond_41

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Lcom/xiaomi/push/jq;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    iget v3, v0, Lcom/xiaomi/push/jq;->a:I

    mul-int/2addr v3, v5

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/xiaomi/push/ii;->c:Ljava/util/Map;

    :goto_5a
    iget v1, v0, Lcom/xiaomi/push/jq;->a:I

    if-ge v2, v1, :cond_c9

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/push/ii;->c:Ljava/util/Map;

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_5a

    :pswitch_6e
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v5, :cond_41

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/push/ii;->a:Z

    invoke-virtual {p0, v7}, Lcom/xiaomi/push/ii;->e(Z)V

    goto/16 :goto_13e

    :pswitch_7d
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v3, :cond_41

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Lcom/xiaomi/push/jq;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    iget v3, v0, Lcom/xiaomi/push/jq;->a:I

    mul-int/2addr v3, v5

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/xiaomi/push/ii;->b:Ljava/util/Map;

    :goto_8f
    iget v1, v0, Lcom/xiaomi/push/jq;->a:I

    if-ge v2, v1, :cond_c9

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/push/ii;->b:Ljava/util/Map;

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_8f

    :pswitch_a3
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v3, :cond_41

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Lcom/xiaomi/push/jq;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    iget v3, v0, Lcom/xiaomi/push/jq;->a:I

    mul-int/2addr v3, v5

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/xiaomi/push/ii;->a:Ljava/util/Map;

    :goto_b5
    iget v1, v0, Lcom/xiaomi/push/jq;->a:I

    if-ge v2, v1, :cond_c9

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/push/ii;->a:Ljava/util/Map;

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_b5

    :cond_c9
    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->h()V

    goto/16 :goto_13e

    :pswitch_ce
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v4, :cond_41

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/push/ii;->c:I

    invoke-virtual {p0, v7}, Lcom/xiaomi/push/ii;->d(Z)V

    goto :goto_13e

    :pswitch_dc
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v4, :cond_41

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/push/ii;->b:I

    invoke-virtual {p0, v7}, Lcom/xiaomi/push/ii;->c(Z)V

    goto :goto_13e

    :pswitch_ea
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v6, :cond_41

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/ii;->e:Ljava/lang/String;

    goto :goto_13e

    :pswitch_f5
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v4, :cond_41

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/push/ii;->a:I

    invoke-virtual {p0, v7}, Lcom/xiaomi/push/ii;->b(Z)V

    goto :goto_13e

    :pswitch_103
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v6, :cond_41

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/ii;->d:Ljava/lang/String;

    goto :goto_13e

    :pswitch_10e
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v6, :cond_41

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/ii;->c:Ljava/lang/String;

    goto :goto_13e

    :pswitch_119
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v6, :cond_41

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/ii;->b:Ljava/lang/String;

    goto :goto_13e

    :pswitch_124
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_41

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/push/ii;->a:J

    invoke-virtual {p0, v7}, Lcom/xiaomi/push/ii;->a(Z)V

    goto :goto_13e

    :pswitch_134
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v6, :cond_41

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/ii;->a:Ljava/lang/String;

    :goto_13e
    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->g()V

    goto/16 :goto_3

    nop

    :pswitch_data_144
    .packed-switch 0x1
        :pswitch_134
        :pswitch_124
        :pswitch_119
        :pswitch_10e
        :pswitch_103
        :pswitch_f5
        :pswitch_ea
        :pswitch_dc
        :pswitch_ce
        :pswitch_a3
        :pswitch_7d
        :pswitch_6e
        :pswitch_48
    .end packed-switch
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/ii;->a:Ljava/util/Map;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/ii;->a:Ljava/util/Map;

    :cond_b
    iget-object v0, p0, Lcom/xiaomi/push/ii;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Z)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/ii;->a:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public a()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/ii;->a:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public a(Lcom/xiaomi/push/ii;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->a()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ii;->a()Z

    move-result v2

    if-nez v1, :cond_10

    if-eqz v2, :cond_21

    :cond_10
    if-eqz v1, :cond_157

    if-nez v2, :cond_16

    goto/16 :goto_157

    :cond_16
    iget-object v1, p0, Lcom/xiaomi/push/ii;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/ii;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    return v0

    :cond_21
    iget-wide v1, p0, Lcom/xiaomi/push/ii;->a:J

    iget-wide v3, p1, Lcom/xiaomi/push/ii;->a:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2a

    return v0

    :cond_2a
    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->c()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ii;->c()Z

    move-result v2

    if-nez v1, :cond_36

    if-eqz v2, :cond_47

    :cond_36
    if-eqz v1, :cond_157

    if-nez v2, :cond_3c

    goto/16 :goto_157

    :cond_3c
    iget-object v1, p0, Lcom/xiaomi/push/ii;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/ii;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    return v0

    :cond_47
    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->d()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ii;->d()Z

    move-result v2

    if-nez v1, :cond_53

    if-eqz v2, :cond_64

    :cond_53
    if-eqz v1, :cond_157

    if-nez v2, :cond_59

    goto/16 :goto_157

    :cond_59
    iget-object v1, p0, Lcom/xiaomi/push/ii;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/ii;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    return v0

    :cond_64
    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->e()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ii;->e()Z

    move-result v2

    if-nez v1, :cond_70

    if-eqz v2, :cond_81

    :cond_70
    if-eqz v1, :cond_157

    if-nez v2, :cond_76

    goto/16 :goto_157

    :cond_76
    iget-object v1, p0, Lcom/xiaomi/push/ii;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/ii;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_81

    return v0

    :cond_81
    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->f()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ii;->f()Z

    move-result v2

    if-nez v1, :cond_8d

    if-eqz v2, :cond_9a

    :cond_8d
    if-eqz v1, :cond_157

    if-nez v2, :cond_93

    goto/16 :goto_157

    :cond_93
    iget v1, p0, Lcom/xiaomi/push/ii;->a:I

    iget v2, p1, Lcom/xiaomi/push/ii;->a:I

    if-eq v1, v2, :cond_9a

    return v0

    :cond_9a
    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->g()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ii;->g()Z

    move-result v2

    if-nez v1, :cond_a6

    if-eqz v2, :cond_b7

    :cond_a6
    if-eqz v1, :cond_157

    if-nez v2, :cond_ac

    goto/16 :goto_157

    :cond_ac
    iget-object v1, p0, Lcom/xiaomi/push/ii;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/ii;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b7

    return v0

    :cond_b7
    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->h()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ii;->h()Z

    move-result v2

    if-nez v1, :cond_c3

    if-eqz v2, :cond_d0

    :cond_c3
    if-eqz v1, :cond_157

    if-nez v2, :cond_c9

    goto/16 :goto_157

    :cond_c9
    iget v1, p0, Lcom/xiaomi/push/ii;->b:I

    iget v2, p1, Lcom/xiaomi/push/ii;->b:I

    if-eq v1, v2, :cond_d0

    return v0

    :cond_d0
    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->i()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ii;->i()Z

    move-result v2

    if-nez v1, :cond_dc

    if-eqz v2, :cond_e9

    :cond_dc
    if-eqz v1, :cond_157

    if-nez v2, :cond_e2

    goto/16 :goto_157

    :cond_e2
    iget v1, p0, Lcom/xiaomi/push/ii;->c:I

    iget v2, p1, Lcom/xiaomi/push/ii;->c:I

    if-eq v1, v2, :cond_e9

    return v0

    :cond_e9
    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->j()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ii;->j()Z

    move-result v2

    if-nez v1, :cond_f5

    if-eqz v2, :cond_105

    :cond_f5
    if-eqz v1, :cond_157

    if-nez v2, :cond_fa

    goto :goto_157

    :cond_fa
    iget-object v1, p0, Lcom/xiaomi/push/ii;->a:Ljava/util/Map;

    iget-object v2, p1, Lcom/xiaomi/push/ii;->a:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_105

    return v0

    :cond_105
    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->k()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ii;->k()Z

    move-result v2

    if-nez v1, :cond_111

    if-eqz v2, :cond_121

    :cond_111
    if-eqz v1, :cond_157

    if-nez v2, :cond_116

    goto :goto_157

    :cond_116
    iget-object v1, p0, Lcom/xiaomi/push/ii;->b:Ljava/util/Map;

    iget-object v2, p1, Lcom/xiaomi/push/ii;->b:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_121

    return v0

    :cond_121
    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->m()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ii;->m()Z

    move-result v2

    if-nez v1, :cond_12d

    if-eqz v2, :cond_139

    :cond_12d
    if-eqz v1, :cond_157

    if-nez v2, :cond_132

    goto :goto_157

    :cond_132
    iget-boolean v1, p0, Lcom/xiaomi/push/ii;->a:Z

    iget-boolean v2, p1, Lcom/xiaomi/push/ii;->a:Z

    if-eq v1, v2, :cond_139

    return v0

    :cond_139
    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->n()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ii;->n()Z

    move-result v2

    if-nez v1, :cond_145

    if-eqz v2, :cond_155

    :cond_145
    if-eqz v1, :cond_157

    if-nez v2, :cond_14a

    goto :goto_157

    :cond_14a
    iget-object v1, p0, Lcom/xiaomi/push/ii;->c:Ljava/util/Map;

    iget-object p1, p1, Lcom/xiaomi/push/ii;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_155

    return v0

    :cond_155
    const/4 p1, 0x1

    return p1

    :cond_157
    :goto_157
    return v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/xiaomi/push/ii;->b:I

    return v0
.end method

.method public b(I)Lcom/xiaomi/push/ii;
    .registers 2

    iput p1, p0, Lcom/xiaomi/push/ii;->b:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/ii;->c(Z)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/xiaomi/push/ii;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/push/ii;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/ii;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/xiaomi/push/ii;->b:Ljava/util/Map;

    return-object v0
.end method

.method public b(Lcom/xiaomi/push/jr;)V
    .registers 6

    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->a()V

    sget-object v0, Lcom/xiaomi/push/ii;->a:Lcom/xiaomi/push/jw;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jw;)V

    iget-object v0, p0, Lcom/xiaomi/push/ii;->a:Ljava/lang/String;

    if-eqz v0, :cond_19

    sget-object v0, Lcom/xiaomi/push/ii;->a:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/ii;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_19
    sget-object v0, Lcom/xiaomi/push/ii;->b:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-wide v0, p0, Lcom/xiaomi/push/ii;->a:J

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/jr;->a(J)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    iget-object v0, p0, Lcom/xiaomi/push/ii;->b:Ljava/lang/String;

    if-eqz v0, :cond_3d

    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->c()Z

    move-result v0

    if-eqz v0, :cond_3d

    sget-object v0, Lcom/xiaomi/push/ii;->c:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/ii;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_3d
    iget-object v0, p0, Lcom/xiaomi/push/ii;->c:Ljava/lang/String;

    if-eqz v0, :cond_54

    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->d()Z

    move-result v0

    if-eqz v0, :cond_54

    sget-object v0, Lcom/xiaomi/push/ii;->d:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/ii;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_54
    iget-object v0, p0, Lcom/xiaomi/push/ii;->d:Ljava/lang/String;

    if-eqz v0, :cond_6b

    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->e()Z

    move-result v0

    if-eqz v0, :cond_6b

    sget-object v0, Lcom/xiaomi/push/ii;->e:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/ii;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_6b
    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->f()Z

    move-result v0

    if-eqz v0, :cond_7e

    sget-object v0, Lcom/xiaomi/push/ii;->f:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget v0, p0, Lcom/xiaomi/push/ii;->a:I

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(I)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_7e
    iget-object v0, p0, Lcom/xiaomi/push/ii;->e:Ljava/lang/String;

    if-eqz v0, :cond_95

    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->g()Z

    move-result v0

    if-eqz v0, :cond_95

    sget-object v0, Lcom/xiaomi/push/ii;->g:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/ii;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_95
    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->h()Z

    move-result v0

    if-eqz v0, :cond_a8

    sget-object v0, Lcom/xiaomi/push/ii;->h:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget v0, p0, Lcom/xiaomi/push/ii;->b:I

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(I)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_a8
    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->i()Z

    move-result v0

    if-eqz v0, :cond_bb

    sget-object v0, Lcom/xiaomi/push/ii;->i:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget v0, p0, Lcom/xiaomi/push/ii;->c:I

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(I)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_bb
    iget-object v0, p0, Lcom/xiaomi/push/ii;->a:Ljava/util/Map;

    const/16 v1, 0xb

    if-eqz v0, :cond_109

    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->j()Z

    move-result v0

    if-eqz v0, :cond_109

    sget-object v0, Lcom/xiaomi/push/ii;->j:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    new-instance v0, Lcom/xiaomi/push/jq;

    iget-object v2, p0, Lcom/xiaomi/push/ii;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v0, v1, v1, v2}, Lcom/xiaomi/push/jq;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jq;)V

    iget-object v0, p0, Lcom/xiaomi/push/ii;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_103

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    goto :goto_e4

    :cond_103
    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->d()V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_109
    iget-object v0, p0, Lcom/xiaomi/push/ii;->b:Ljava/util/Map;

    if-eqz v0, :cond_155

    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->k()Z

    move-result v0

    if-eqz v0, :cond_155

    sget-object v0, Lcom/xiaomi/push/ii;->k:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    new-instance v0, Lcom/xiaomi/push/jq;

    iget-object v2, p0, Lcom/xiaomi/push/ii;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v0, v1, v1, v2}, Lcom/xiaomi/push/jq;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jq;)V

    iget-object v0, p0, Lcom/xiaomi/push/ii;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_130
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    goto :goto_130

    :cond_14f
    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->d()V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_155
    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->m()Z

    move-result v0

    if-eqz v0, :cond_168

    sget-object v0, Lcom/xiaomi/push/ii;->l:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-boolean v0, p0, Lcom/xiaomi/push/ii;->a:Z

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Z)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_168
    iget-object v0, p0, Lcom/xiaomi/push/ii;->c:Ljava/util/Map;

    if-eqz v0, :cond_1b4

    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->n()Z

    move-result v0

    if-eqz v0, :cond_1b4

    sget-object v0, Lcom/xiaomi/push/ii;->m:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    new-instance v0, Lcom/xiaomi/push/jq;

    iget-object v2, p0, Lcom/xiaomi/push/ii;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v0, v1, v1, v2}, Lcom/xiaomi/push/jq;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jq;)V

    iget-object v0, p0, Lcom/xiaomi/push/ii;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1ae

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

    goto :goto_18f

    :cond_1ae
    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->d()V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_1b4
    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->c()V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/ii;->b:Ljava/util/Map;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/ii;->b:Ljava/util/Map;

    :cond_b
    iget-object v0, p0, Lcom/xiaomi/push/ii;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Z)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/ii;->a:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public b()Z
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/push/ii;->a:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/xiaomi/push/ii;->c:I

    return v0
.end method

.method public c(I)Lcom/xiaomi/push/ii;
    .registers 2

    iput p1, p0, Lcom/xiaomi/push/ii;->c:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/ii;->d(Z)V

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/xiaomi/push/ii;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/push/ii;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/ii;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Z)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/ii;->a:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public c()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/ii;->b:Ljava/lang/String;

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

    check-cast p1, Lcom/xiaomi/push/ii;

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/ii;->a(Lcom/xiaomi/push/ii;)I

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/String;)Lcom/xiaomi/push/ii;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/push/ii;->d:Ljava/lang/String;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/ii;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Z)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/ii;->a:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public d()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/ii;->c:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/xiaomi/push/ii;->a:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public e()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/ii;->d:Ljava/lang/String;

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
    instance-of v1, p1, Lcom/xiaomi/push/ii;

    if-eqz v1, :cond_f

    check-cast p1, Lcom/xiaomi/push/ii;

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/ii;->a(Lcom/xiaomi/push/ii;)Z

    move-result p1

    return p1

    :cond_f
    return v0
.end method

.method public f()Z
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/push/ii;->a:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public g()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/ii;->e:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/xiaomi/push/ii;->a:Ljava/util/BitSet;

    const/4 v1, 0x2

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

    iget-object v0, p0, Lcom/xiaomi/push/ii;->a:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public j()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/ii;->a:Ljava/util/Map;

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

    iget-object v0, p0, Lcom/xiaomi/push/ii;->b:Ljava/util/Map;

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

    iget-boolean v0, p0, Lcom/xiaomi/push/ii;->a:Z

    return v0
.end method

.method public m()Z
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/push/ii;->a:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public n()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/ii;->c:Ljava/util/Map;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PushMetaInfo("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/ii;->a:Ljava/lang/String;

    const-string v2, "null"

    if-nez v1, :cond_16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    :cond_16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_19
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "messageTs:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/xiaomi/push/ii;->a:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->c()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "topic:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaomi/push/ii;->b:Ljava/lang/String;

    if-nez v3, :cond_3e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_41

    :cond_3e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_41
    :goto_41
    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->d()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "title:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaomi/push/ii;->c:Ljava/lang/String;

    if-nez v3, :cond_57

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5a

    :cond_57
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5a
    :goto_5a
    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->e()Z

    move-result v3

    if-eqz v3, :cond_73

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "description:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaomi/push/ii;->d:Ljava/lang/String;

    if-nez v3, :cond_70

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_73

    :cond_70
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_73
    :goto_73
    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->f()Z

    move-result v3

    if-eqz v3, :cond_86

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "notifyType:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaomi/push/ii;->a:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_86
    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->g()Z

    move-result v3

    if-eqz v3, :cond_9f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "url:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaomi/push/ii;->e:Ljava/lang/String;

    if-nez v3, :cond_9c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9f

    :cond_9c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9f
    :goto_9f
    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->h()Z

    move-result v3

    if-eqz v3, :cond_b2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "passThrough:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaomi/push/ii;->b:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_b2
    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->i()Z

    move-result v3

    if-eqz v3, :cond_c5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "notifyId:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaomi/push/ii;->c:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_c5
    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->j()Z

    move-result v3

    if-eqz v3, :cond_de

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "extra:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaomi/push/ii;->a:Ljava/util/Map;

    if-nez v3, :cond_db

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_de

    :cond_db
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_de
    :goto_de
    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->k()Z

    move-result v3

    if-eqz v3, :cond_f7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "internal:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaomi/push/ii;->b:Ljava/util/Map;

    if-nez v3, :cond_f4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f7

    :cond_f4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_f7
    :goto_f7
    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->m()Z

    move-result v3

    if-eqz v3, :cond_10a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ignoreRegInfo:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/xiaomi/push/ii;->a:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_10a
    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->n()Z

    move-result v3

    if-eqz v3, :cond_123

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "apsProperFields:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/ii;->c:Ljava/util/Map;

    if-nez v1, :cond_120

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_123

    :cond_120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_123
    :goto_123
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
