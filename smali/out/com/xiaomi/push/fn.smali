.class public Lcom/xiaomi/push/fn;
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
        "Lcom/xiaomi/push/fn;",
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
.field public a:B

.field public a:I

.field public a:Ljava/lang/String;

.field private a:Ljava/util/BitSet;

.field public b:I

.field public b:Ljava/lang/String;

.field public c:I

.field public c:Ljava/lang/String;

.field public d:I

.field public d:Ljava/lang/String;

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/xiaomi/push/jw;

    const-string v1, "StatsEvent"

    invoke-direct {v0, v1}, Lcom/xiaomi/push/jw;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/fn;->a:Lcom/xiaomi/push/jw;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/4 v1, 0x3

    const-string v2, ""

    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/fn;->a:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v3, 0x8

    const/4 v4, 0x2

    invoke-direct {v0, v2, v3, v4}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/fn;->b:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    invoke-direct {v0, v2, v3, v1}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/fn;->c:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v1, 0xb

    const/4 v4, 0x4

    invoke-direct {v0, v2, v1, v4}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/fn;->d:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/4 v4, 0x5

    invoke-direct {v0, v2, v1, v4}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/fn;->e:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/4 v4, 0x6

    invoke-direct {v0, v2, v3, v4}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/fn;->f:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/4 v4, 0x7

    invoke-direct {v0, v2, v1, v4}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/fn;->g:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    invoke-direct {v0, v2, v1, v3}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/fn;->h:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v1, 0x9

    invoke-direct {v0, v2, v3, v1}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/fn;->i:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v1, 0xa

    invoke-direct {v0, v2, v3, v1}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/fn;->j:Lcom/xiaomi/push/jo;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/push/fn;->a:Ljava/util/BitSet;

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/push/fn;)I
    .registers 4

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
    invoke-virtual {p0}, Lcom/xiaomi/push/fn;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/fn;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_3a

    return v0

    :cond_3a
    invoke-virtual {p0}, Lcom/xiaomi/push/fn;->a()Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-byte v0, p0, Lcom/xiaomi/push/fn;->a:B

    iget-byte v1, p1, Lcom/xiaomi/push/fn;->a:B

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(BB)I

    move-result v0

    if-eqz v0, :cond_4b

    return v0

    :cond_4b
    invoke-virtual {p0}, Lcom/xiaomi/push/fn;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/fn;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_62

    return v0

    :cond_62
    invoke-virtual {p0}, Lcom/xiaomi/push/fn;->b()Z

    move-result v0

    if-eqz v0, :cond_73

    iget v0, p0, Lcom/xiaomi/push/fn;->a:I

    iget v1, p1, Lcom/xiaomi/push/fn;->a:I

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(II)I

    move-result v0

    if-eqz v0, :cond_73

    return v0

    :cond_73
    invoke-virtual {p0}, Lcom/xiaomi/push/fn;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/fn;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_8a

    return v0

    :cond_8a
    invoke-virtual {p0}, Lcom/xiaomi/push/fn;->c()Z

    move-result v0

    if-eqz v0, :cond_9b

    iget v0, p0, Lcom/xiaomi/push/fn;->b:I

    iget v1, p1, Lcom/xiaomi/push/fn;->b:I

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(II)I

    move-result v0

    if-eqz v0, :cond_9b

    return v0

    :cond_9b
    invoke-virtual {p0}, Lcom/xiaomi/push/fn;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/fn;->d()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_b2

    return v0

    :cond_b2
    invoke-virtual {p0}, Lcom/xiaomi/push/fn;->d()Z

    move-result v0

    if-eqz v0, :cond_c3

    iget-object v0, p0, Lcom/xiaomi/push/fn;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/fn;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_c3

    return v0

    :cond_c3
    invoke-virtual {p0}, Lcom/xiaomi/push/fn;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/fn;->e()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_da

    return v0

    :cond_da
    invoke-virtual {p0}, Lcom/xiaomi/push/fn;->e()Z

    move-result v0

    if-eqz v0, :cond_eb

    iget-object v0, p0, Lcom/xiaomi/push/fn;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/fn;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_eb

    return v0

    :cond_eb
    invoke-virtual {p0}, Lcom/xiaomi/push/fn;->f()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/fn;->f()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_102

    return v0

    :cond_102
    invoke-virtual {p0}, Lcom/xiaomi/push/fn;->f()Z

    move-result v0

    if-eqz v0, :cond_113

    iget v0, p0, Lcom/xiaomi/push/fn;->c:I

    iget v1, p1, Lcom/xiaomi/push/fn;->c:I

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(II)I

    move-result v0

    if-eqz v0, :cond_113

    return v0

    :cond_113
    invoke-virtual {p0}, Lcom/xiaomi/push/fn;->g()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/fn;->g()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_12a

    return v0

    :cond_12a
    invoke-virtual {p0}, Lcom/xiaomi/push/fn;->g()Z

    move-result v0

    if-eqz v0, :cond_13b

    iget-object v0, p0, Lcom/xiaomi/push/fn;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/fn;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_13b

    return v0

    :cond_13b
    invoke-virtual {p0}, Lcom/xiaomi/push/fn;->h()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/fn;->h()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_152

    return v0

    :cond_152
    invoke-virtual {p0}, Lcom/xiaomi/push/fn;->h()Z

    move-result v0

    if-eqz v0, :cond_163

    iget-object v0, p0, Lcom/xiaomi/push/fn;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/fn;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_163

    return v0

    :cond_163
    invoke-virtual {p0}, Lcom/xiaomi/push/fn;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/fn;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_17a

    return v0

    :cond_17a
    invoke-virtual {p0}, Lcom/xiaomi/push/fn;->i()Z

    move-result v0

    if-eqz v0, :cond_18b

    iget v0, p0, Lcom/xiaomi/push/fn;->d:I

    iget v1, p1, Lcom/xiaomi/push/fn;->d:I

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(II)I

    move-result v0

    if-eqz v0, :cond_18b

    return v0

    :cond_18b
    invoke-virtual {p0}, Lcom/xiaomi/push/fn;->j()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/fn;->j()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1a2

    return v0

    :cond_1a2
    invoke-virtual {p0}, Lcom/xiaomi/push/fn;->j()Z

    move-result v0

    if-eqz v0, :cond_1b3

    iget v0, p0, Lcom/xiaomi/push/fn;->e:I

    iget p1, p1, Lcom/xiaomi/push/fn;->e:I

    invoke-static {v0, p1}, Lcom/xiaomi/push/jh;->a(II)I

    move-result p1

    if-eqz p1, :cond_1b3

    return p1

    :cond_1b3
    const/4 p1, 0x0

    return p1
.end method

.method public a(B)Lcom/xiaomi/push/fn;
    .registers 2

    iput-byte p1, p0, Lcom/xiaomi/push/fn;->a:B

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/fn;->a(Z)V

    return-object p0
.end method

.method public a(I)Lcom/xiaomi/push/fn;
    .registers 2

    iput p1, p0, Lcom/xiaomi/push/fn;->a:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/fn;->b(Z)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/xiaomi/push/fn;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/push/fn;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a()V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/fn;->a:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/xiaomi/push/js;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'connpt\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/push/fn;->toString()Ljava/lang/String;

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

    if-nez v1, :cond_75

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->f()V

    invoke-virtual {p0}, Lcom/xiaomi/push/fn;->a()Z

    move-result p1

    if-eqz p1, :cond_5a

    invoke-virtual {p0}, Lcom/xiaomi/push/fn;->b()Z

    move-result p1

    if-eqz p1, :cond_3f

    invoke-virtual {p0}, Lcom/xiaomi/push/fn;->c()Z

    move-result p1

    if-eqz p1, :cond_24

    invoke-virtual {p0}, Lcom/xiaomi/push/fn;->a()V

    return-void

    :cond_24
    new-instance p1, Lcom/xiaomi/push/js;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Required field \'value\' was not found in serialized data! Struct: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/push/fn;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/xiaomi/push/js;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3f
    new-instance p1, Lcom/xiaomi/push/js;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Required field \'type\' was not found in serialized data! Struct: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/push/fn;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/xiaomi/push/js;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5a
    new-instance p1, Lcom/xiaomi/push/js;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Required field \'chid\' was not found in serialized data! Struct: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/push/fn;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/xiaomi/push/js;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_75
    iget-short v1, v0, Lcom/xiaomi/push/jo;->a:S

    const/16 v2, 0xb

    const/16 v3, 0x8

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_10c

    :cond_7f
    iget-byte v0, v0, Lcom/xiaomi/push/jo;->a:B

    invoke-static {p1, v0}, Lcom/xiaomi/push/ju;->a(Lcom/xiaomi/push/jr;B)V

    goto/16 :goto_107

    :pswitch_86
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v3, :cond_7f

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/push/fn;->e:I

    invoke-virtual {p0, v4}, Lcom/xiaomi/push/fn;->f(Z)V

    goto/16 :goto_107

    :pswitch_95
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v3, :cond_7f

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/push/fn;->d:I

    invoke-virtual {p0, v4}, Lcom/xiaomi/push/fn;->e(Z)V

    goto :goto_107

    :pswitch_a3
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v2, :cond_7f

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/fn;->d:Ljava/lang/String;

    goto :goto_107

    :pswitch_ae
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v2, :cond_7f

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/fn;->c:Ljava/lang/String;

    goto :goto_107

    :pswitch_b9
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v3, :cond_7f

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/push/fn;->c:I

    invoke-virtual {p0, v4}, Lcom/xiaomi/push/fn;->d(Z)V

    goto :goto_107

    :pswitch_c7
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v2, :cond_7f

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/fn;->b:Ljava/lang/String;

    goto :goto_107

    :pswitch_d2
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v2, :cond_7f

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/fn;->a:Ljava/lang/String;

    goto :goto_107

    :pswitch_dd
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v3, :cond_7f

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/push/fn;->b:I

    invoke-virtual {p0, v4}, Lcom/xiaomi/push/fn;->c(Z)V

    goto :goto_107

    :pswitch_eb
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v3, :cond_7f

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/push/fn;->a:I

    invoke-virtual {p0, v4}, Lcom/xiaomi/push/fn;->b(Z)V

    goto :goto_107

    :pswitch_f9
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7f

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()B

    move-result v0

    iput-byte v0, p0, Lcom/xiaomi/push/fn;->a:B

    invoke-virtual {p0, v4}, Lcom/xiaomi/push/fn;->a(Z)V

    :goto_107
    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->g()V

    goto/16 :goto_3

    :pswitch_data_10c
    .packed-switch 0x1
        :pswitch_f9
        :pswitch_eb
        :pswitch_dd
        :pswitch_d2
        :pswitch_c7
        :pswitch_b9
        :pswitch_ae
        :pswitch_a3
        :pswitch_95
        :pswitch_86
    .end packed-switch
.end method

.method public a(Z)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/fn;->a:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public a()Z
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/push/fn;->a:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/xiaomi/push/fn;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-byte v1, p0, Lcom/xiaomi/push/fn;->a:B

    iget-byte v2, p1, Lcom/xiaomi/push/fn;->a:B

    if-eq v1, v2, :cond_b

    return v0

    :cond_b
    iget v1, p0, Lcom/xiaomi/push/fn;->a:I

    iget v2, p1, Lcom/xiaomi/push/fn;->a:I

    if-eq v1, v2, :cond_12

    return v0

    :cond_12
    iget v1, p0, Lcom/xiaomi/push/fn;->b:I

    iget v2, p1, Lcom/xiaomi/push/fn;->b:I

    if-eq v1, v2, :cond_19

    return v0

    :cond_19
    invoke-virtual {p0}, Lcom/xiaomi/push/fn;->d()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/fn;->d()Z

    move-result v2

    if-nez v1, :cond_25

    if-eqz v2, :cond_36

    :cond_25
    if-eqz v1, :cond_d6

    if-nez v2, :cond_2b

    goto/16 :goto_d6

    :cond_2b
    iget-object v1, p0, Lcom/xiaomi/push/fn;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/fn;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    return v0

    :cond_36
    invoke-virtual {p0}, Lcom/xiaomi/push/fn;->e()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/fn;->e()Z

    move-result v2

    if-nez v1, :cond_42

    if-eqz v2, :cond_53

    :cond_42
    if-eqz v1, :cond_d6

    if-nez v2, :cond_48

    goto/16 :goto_d6

    :cond_48
    iget-object v1, p0, Lcom/xiaomi/push/fn;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/fn;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    return v0

    :cond_53
    invoke-virtual {p0}, Lcom/xiaomi/push/fn;->f()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/fn;->f()Z

    move-result v2

    if-nez v1, :cond_5f

    if-eqz v2, :cond_6c

    :cond_5f
    if-eqz v1, :cond_d6

    if-nez v2, :cond_65

    goto/16 :goto_d6

    :cond_65
    iget v1, p0, Lcom/xiaomi/push/fn;->c:I

    iget v2, p1, Lcom/xiaomi/push/fn;->c:I

    if-eq v1, v2, :cond_6c

    return v0

    :cond_6c
    invoke-virtual {p0}, Lcom/xiaomi/push/fn;->g()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/fn;->g()Z

    move-result v2

    if-nez v1, :cond_78

    if-eqz v2, :cond_88

    :cond_78
    if-eqz v1, :cond_d6

    if-nez v2, :cond_7d

    goto :goto_d6

    :cond_7d
    iget-object v1, p0, Lcom/xiaomi/push/fn;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/fn;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_88

    return v0

    :cond_88
    invoke-virtual {p0}, Lcom/xiaomi/push/fn;->h()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/fn;->h()Z

    move-result v2

    if-nez v1, :cond_94

    if-eqz v2, :cond_a4

    :cond_94
    if-eqz v1, :cond_d6

    if-nez v2, :cond_99

    goto :goto_d6

    :cond_99
    iget-object v1, p0, Lcom/xiaomi/push/fn;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/fn;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a4

    return v0

    :cond_a4
    invoke-virtual {p0}, Lcom/xiaomi/push/fn;->i()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/fn;->i()Z

    move-result v2

    if-nez v1, :cond_b0

    if-eqz v2, :cond_bc

    :cond_b0
    if-eqz v1, :cond_d6

    if-nez v2, :cond_b5

    goto :goto_d6

    :cond_b5
    iget v1, p0, Lcom/xiaomi/push/fn;->d:I

    iget v2, p1, Lcom/xiaomi/push/fn;->d:I

    if-eq v1, v2, :cond_bc

    return v0

    :cond_bc
    invoke-virtual {p0}, Lcom/xiaomi/push/fn;->j()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/fn;->j()Z

    move-result v2

    if-nez v1, :cond_c8

    if-eqz v2, :cond_d4

    :cond_c8
    if-eqz v1, :cond_d6

    if-nez v2, :cond_cd

    goto :goto_d6

    :cond_cd
    iget v1, p0, Lcom/xiaomi/push/fn;->e:I

    iget p1, p1, Lcom/xiaomi/push/fn;->e:I

    if-eq v1, p1, :cond_d4

    return v0

    :cond_d4
    const/4 p1, 0x1

    return p1

    :cond_d6
    :goto_d6
    return v0
.end method

.method public b(I)Lcom/xiaomi/push/fn;
    .registers 2

    iput p1, p0, Lcom/xiaomi/push/fn;->b:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/fn;->c(Z)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/xiaomi/push/fn;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/push/fn;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b(Lcom/xiaomi/push/jr;)V
    .registers 3

    invoke-virtual {p0}, Lcom/xiaomi/push/fn;->a()V

    sget-object v0, Lcom/xiaomi/push/fn;->a:Lcom/xiaomi/push/jw;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jw;)V

    sget-object v0, Lcom/xiaomi/push/fn;->a:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-byte v0, p0, Lcom/xiaomi/push/fn;->a:B

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(B)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    sget-object v0, Lcom/xiaomi/push/fn;->b:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget v0, p0, Lcom/xiaomi/push/fn;->a:I

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(I)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    sget-object v0, Lcom/xiaomi/push/fn;->c:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget v0, p0, Lcom/xiaomi/push/fn;->b:I

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(I)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    iget-object v0, p0, Lcom/xiaomi/push/fn;->a:Ljava/lang/String;

    if-eqz v0, :cond_40

    sget-object v0, Lcom/xiaomi/push/fn;->d:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/fn;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_40
    iget-object v0, p0, Lcom/xiaomi/push/fn;->b:Ljava/lang/String;

    if-eqz v0, :cond_57

    invoke-virtual {p0}, Lcom/xiaomi/push/fn;->e()Z

    move-result v0

    if-eqz v0, :cond_57

    sget-object v0, Lcom/xiaomi/push/fn;->e:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/fn;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_57
    invoke-virtual {p0}, Lcom/xiaomi/push/fn;->f()Z

    move-result v0

    if-eqz v0, :cond_6a

    sget-object v0, Lcom/xiaomi/push/fn;->f:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget v0, p0, Lcom/xiaomi/push/fn;->c:I

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(I)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_6a
    iget-object v0, p0, Lcom/xiaomi/push/fn;->c:Ljava/lang/String;

    if-eqz v0, :cond_81

    invoke-virtual {p0}, Lcom/xiaomi/push/fn;->g()Z

    move-result v0

    if-eqz v0, :cond_81

    sget-object v0, Lcom/xiaomi/push/fn;->g:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/fn;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_81
    iget-object v0, p0, Lcom/xiaomi/push/fn;->d:Ljava/lang/String;

    if-eqz v0, :cond_98

    invoke-virtual {p0}, Lcom/xiaomi/push/fn;->h()Z

    move-result v0

    if-eqz v0, :cond_98

    sget-object v0, Lcom/xiaomi/push/fn;->h:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/fn;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_98
    invoke-virtual {p0}, Lcom/xiaomi/push/fn;->i()Z

    move-result v0

    if-eqz v0, :cond_ab

    sget-object v0, Lcom/xiaomi/push/fn;->i:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget v0, p0, Lcom/xiaomi/push/fn;->d:I

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(I)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_ab
    invoke-virtual {p0}, Lcom/xiaomi/push/fn;->j()Z

    move-result v0

    if-eqz v0, :cond_be

    sget-object v0, Lcom/xiaomi/push/fn;->j:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget v0, p0, Lcom/xiaomi/push/fn;->e:I

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(I)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_be
    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->c()V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()V

    return-void
.end method

.method public b(Z)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/fn;->a:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public b()Z
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/push/fn;->a:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public c(I)Lcom/xiaomi/push/fn;
    .registers 2

    iput p1, p0, Lcom/xiaomi/push/fn;->c:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/fn;->d(Z)V

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/xiaomi/push/fn;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/push/fn;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c(Z)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/fn;->a:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public c()Z
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/push/fn;->a:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/xiaomi/push/fn;

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/fn;->a(Lcom/xiaomi/push/fn;)I

    move-result p1

    return p1
.end method

.method public d(I)Lcom/xiaomi/push/fn;
    .registers 2

    iput p1, p0, Lcom/xiaomi/push/fn;->d:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/fn;->e(Z)V

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/xiaomi/push/fn;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/push/fn;->d:Ljava/lang/String;

    return-object p0
.end method

.method public d(Z)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/fn;->a:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public d()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/fn;->a:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/xiaomi/push/fn;->a:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public e()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/fn;->b:Ljava/lang/String;

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
    instance-of v1, p1, Lcom/xiaomi/push/fn;

    if-eqz v1, :cond_f

    check-cast p1, Lcom/xiaomi/push/fn;

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/fn;->a(Lcom/xiaomi/push/fn;)Z

    move-result p1

    return p1

    :cond_f
    return v0
.end method

.method public f(Z)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/fn;->a:Ljava/util/BitSet;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public f()Z
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/push/fn;->a:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public g()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/fn;->c:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/xiaomi/push/fn;->d:Ljava/lang/String;

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
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/push/fn;->a:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public j()Z
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/push/fn;->a:Ljava/util/BitSet;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StatsEvent("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "chid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/xiaomi/push/fn;->a:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "type:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaomi/push/fn;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "value:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaomi/push/fn;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "connpt:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/push/fn;->a:Ljava/lang/String;

    const-string v3, "null"

    if-nez v2, :cond_3f

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_42

    :cond_3f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_42
    invoke-virtual {p0}, Lcom/xiaomi/push/fn;->e()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "host:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/push/fn;->b:Ljava/lang/String;

    if-nez v2, :cond_58

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5b

    :cond_58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5b
    :goto_5b
    invoke-virtual {p0}, Lcom/xiaomi/push/fn;->f()Z

    move-result v2

    if-eqz v2, :cond_6e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "subvalue:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaomi/push/fn;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_6e
    invoke-virtual {p0}, Lcom/xiaomi/push/fn;->g()Z

    move-result v2

    if-eqz v2, :cond_87

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "annotation:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/push/fn;->c:Ljava/lang/String;

    if-nez v2, :cond_84

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_87

    :cond_84
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_87
    :goto_87
    invoke-virtual {p0}, Lcom/xiaomi/push/fn;->h()Z

    move-result v2

    if-eqz v2, :cond_a0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "user:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/push/fn;->d:Ljava/lang/String;

    if-nez v2, :cond_9d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a0

    :cond_9d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a0
    :goto_a0
    invoke-virtual {p0}, Lcom/xiaomi/push/fn;->i()Z

    move-result v2

    if-eqz v2, :cond_b3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "time:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaomi/push/fn;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_b3
    invoke-virtual {p0}, Lcom/xiaomi/push/fn;->j()Z

    move-result v2

    if-eqz v2, :cond_c6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "clientIp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/push/fn;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_c6
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
