.class public Lcom/xiaomi/push/ie;
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
        "Lcom/xiaomi/push/ie;",
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


# instance fields
.field public a:I

.field public a:Lcom/xiaomi/push/ib;

.field private a:Ljava/util/BitSet;

.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/push/ig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/xiaomi/push/jw;

    const-string v1, "NormalConfig"

    invoke-direct {v0, v1}, Lcom/xiaomi/push/jw;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/ie;->a:Lcom/xiaomi/push/jw;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v1, 0x8

    const-string v2, ""

    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ie;->a:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/16 v3, 0xf

    const/4 v4, 0x2

    invoke-direct {v0, v2, v3, v4}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ie;->b:Lcom/xiaomi/push/jo;

    new-instance v0, Lcom/xiaomi/push/jo;

    const/4 v3, 0x3

    invoke-direct {v0, v2, v1, v3}, Lcom/xiaomi/push/jo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ie;->c:Lcom/xiaomi/push/jo;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/push/ie;->a:Ljava/util/BitSet;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/xiaomi/push/ie;->a:I

    return v0
.end method

.method public a(Lcom/xiaomi/push/ie;)I
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
    invoke-virtual {p0}, Lcom/xiaomi/push/ie;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ie;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_3a

    return v0

    :cond_3a
    invoke-virtual {p0}, Lcom/xiaomi/push/ie;->a()Z

    move-result v0

    if-eqz v0, :cond_4b

    iget v0, p0, Lcom/xiaomi/push/ie;->a:I

    iget v1, p1, Lcom/xiaomi/push/ie;->a:I

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(II)I

    move-result v0

    if-eqz v0, :cond_4b

    return v0

    :cond_4b
    invoke-virtual {p0}, Lcom/xiaomi/push/ie;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ie;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_62

    return v0

    :cond_62
    invoke-virtual {p0}, Lcom/xiaomi/push/ie;->b()Z

    move-result v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/xiaomi/push/ie;->a:Ljava/util/List;

    iget-object v1, p1, Lcom/xiaomi/push/ie;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/xiaomi/push/jh;->a(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    if-eqz v0, :cond_73

    return v0

    :cond_73
    invoke-virtual {p0}, Lcom/xiaomi/push/ie;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ie;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_8a

    return v0

    :cond_8a
    invoke-virtual {p0}, Lcom/xiaomi/push/ie;->c()Z

    move-result v0

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/xiaomi/push/ie;->a:Lcom/xiaomi/push/ib;

    iget-object p1, p1, Lcom/xiaomi/push/ie;->a:Lcom/xiaomi/push/ib;

    invoke-static {v0, p1}, Lcom/xiaomi/push/jh;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    if-eqz p1, :cond_9b

    return p1

    :cond_9b
    const/4 p1, 0x0

    return p1
.end method

.method public a()Lcom/xiaomi/push/ib;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/ie;->a:Lcom/xiaomi/push/ib;

    return-object v0
.end method

.method public a()V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/ie;->a:Ljava/util/List;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/xiaomi/push/js;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'configItems\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/push/ie;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/push/js;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/xiaomi/push/jr;)V
    .registers 6

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Lcom/xiaomi/push/jw;

    :goto_3
    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Lcom/xiaomi/push/jo;

    move-result-object v0

    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-nez v1, :cond_33

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->f()V

    invoke-virtual {p0}, Lcom/xiaomi/push/ie;->a()Z

    move-result p1

    if-eqz p1, :cond_18

    invoke-virtual {p0}, Lcom/xiaomi/push/ie;->a()V

    return-void

    :cond_18
    new-instance p1, Lcom/xiaomi/push/js;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Required field \'version\' was not found in serialized data! Struct: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/push/ie;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/xiaomi/push/js;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_33
    iget-short v1, v0, Lcom/xiaomi/push/jo;->a:S

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-eq v1, v3, :cond_81

    const/4 v3, 0x2

    if-eq v1, v3, :cond_55

    const/4 v3, 0x3

    if-eq v1, v3, :cond_46

    :cond_40
    iget-byte v0, v0, Lcom/xiaomi/push/jo;->a:B

    invoke-static {p1, v0}, Lcom/xiaomi/push/ju;->a(Lcom/xiaomi/push/jr;B)V

    goto :goto_8e

    :cond_46
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v2, :cond_40

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()I

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/push/ib;->a(I)Lcom/xiaomi/push/ib;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/ie;->a:Lcom/xiaomi/push/ib;

    goto :goto_8e

    :cond_55
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    const/16 v2, 0xf

    if-ne v1, v2, :cond_40

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()Lcom/xiaomi/push/jp;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget v2, v0, Lcom/xiaomi/push/jp;->a:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/xiaomi/push/ie;->a:Ljava/util/List;

    const/4 v1, 0x0

    :goto_69
    iget v2, v0, Lcom/xiaomi/push/jp;->a:I

    if-ge v1, v2, :cond_7d

    new-instance v2, Lcom/xiaomi/push/ig;

    invoke-direct {v2}, Lcom/xiaomi/push/ig;-><init>()V

    invoke-virtual {v2, p1}, Lcom/xiaomi/push/ig;->a(Lcom/xiaomi/push/jr;)V

    iget-object v3, p0, Lcom/xiaomi/push/ie;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_69

    :cond_7d
    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->i()V

    goto :goto_8e

    :cond_81
    iget-byte v1, v0, Lcom/xiaomi/push/jo;->a:B

    if-ne v1, v2, :cond_40

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/push/ie;->a:I

    invoke-virtual {p0, v3}, Lcom/xiaomi/push/ie;->a(Z)V

    :goto_8e
    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->g()V

    goto/16 :goto_3
.end method

.method public a(Z)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/ie;->a:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public a()Z
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/push/ie;->a:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/xiaomi/push/ie;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget v1, p0, Lcom/xiaomi/push/ie;->a:I

    iget v2, p1, Lcom/xiaomi/push/ie;->a:I

    if-eq v1, v2, :cond_b

    return v0

    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/push/ie;->b()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ie;->b()Z

    move-result v2

    if-nez v1, :cond_17

    if-eqz v2, :cond_27

    :cond_17
    if-eqz v1, :cond_45

    if-nez v2, :cond_1c

    goto :goto_45

    :cond_1c
    iget-object v1, p0, Lcom/xiaomi/push/ie;->a:Ljava/util/List;

    iget-object v2, p1, Lcom/xiaomi/push/ie;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    return v0

    :cond_27
    invoke-virtual {p0}, Lcom/xiaomi/push/ie;->c()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ie;->c()Z

    move-result v2

    if-nez v1, :cond_33

    if-eqz v2, :cond_43

    :cond_33
    if-eqz v1, :cond_45

    if-nez v2, :cond_38

    goto :goto_45

    :cond_38
    iget-object v1, p0, Lcom/xiaomi/push/ie;->a:Lcom/xiaomi/push/ib;

    iget-object p1, p1, Lcom/xiaomi/push/ie;->a:Lcom/xiaomi/push/ib;

    invoke-virtual {v1, p1}, Lcom/xiaomi/push/ib;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_43

    return v0

    :cond_43
    const/4 p1, 0x1

    return p1

    :cond_45
    :goto_45
    return v0
.end method

.method public b(Lcom/xiaomi/push/jr;)V
    .registers 5

    invoke-virtual {p0}, Lcom/xiaomi/push/ie;->a()V

    sget-object v0, Lcom/xiaomi/push/ie;->a:Lcom/xiaomi/push/jw;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jw;)V

    sget-object v0, Lcom/xiaomi/push/ie;->a:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget v0, p0, Lcom/xiaomi/push/ie;->a:I

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(I)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    iget-object v0, p0, Lcom/xiaomi/push/ie;->a:Ljava/util/List;

    if-eqz v0, :cond_4a

    sget-object v0, Lcom/xiaomi/push/ie;->b:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    new-instance v0, Lcom/xiaomi/push/jp;

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/xiaomi/push/ie;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/push/jp;-><init>(BI)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jp;)V

    iget-object v0, p0, Lcom/xiaomi/push/ie;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/push/ig;

    invoke-virtual {v1, p1}, Lcom/xiaomi/push/ig;->b(Lcom/xiaomi/push/jr;)V

    goto :goto_34

    :cond_44
    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->e()V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_4a
    iget-object v0, p0, Lcom/xiaomi/push/ie;->a:Lcom/xiaomi/push/ib;

    if-eqz v0, :cond_65

    invoke-virtual {p0}, Lcom/xiaomi/push/ie;->c()Z

    move-result v0

    if-eqz v0, :cond_65

    sget-object v0, Lcom/xiaomi/push/ie;->c:Lcom/xiaomi/push/jo;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(Lcom/xiaomi/push/jo;)V

    iget-object v0, p0, Lcom/xiaomi/push/ie;->a:Lcom/xiaomi/push/ib;

    invoke-virtual {v0}, Lcom/xiaomi/push/ib;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jr;->a(I)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->b()V

    :cond_65
    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->c()V

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->a()V

    return-void
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/ie;->a:Ljava/util/List;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public c()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/ie;->a:Lcom/xiaomi/push/ib;

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

    check-cast p1, Lcom/xiaomi/push/ie;

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/ie;->a(Lcom/xiaomi/push/ie;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/xiaomi/push/ie;

    if-eqz v1, :cond_f

    check-cast p1, Lcom/xiaomi/push/ie;

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/ie;->a(Lcom/xiaomi/push/ie;)Z

    move-result p1

    return p1

    :cond_f
    return v0
.end method

.method public hashCode()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NormalConfig("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/push/ie;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "configItems:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/push/ie;->a:Ljava/util/List;

    const-string v3, "null"

    if-nez v2, :cond_25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_28

    :cond_25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_28
    invoke-virtual {p0}, Lcom/xiaomi/push/ie;->c()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/ie;->a:Lcom/xiaomi/push/ib;

    if-nez v1, :cond_3e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_41

    :cond_3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_41
    :goto_41
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
