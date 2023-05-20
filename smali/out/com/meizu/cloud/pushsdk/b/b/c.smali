.class public Lcom/meizu/cloud/pushsdk/b/b/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/cloud/pushsdk/b/b/c$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/meizu/cloud/pushsdk/b/b/a;

.field private final c:Ljava/lang/String;

.field private d:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/meizu/cloud/pushsdk/b/b/c;->a:Ljava/util/HashMap;

    return-void
.end method

.method varargs constructor <init>(Lcom/meizu/cloud/pushsdk/b/b/a;Ljava/lang/String;[Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/cloud/pushsdk/b/b/a;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/b/b/c;->b:Lcom/meizu/cloud/pushsdk/b/b/a;

    iput-object p2, p0, Lcom/meizu/cloud/pushsdk/b/b/c;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/meizu/cloud/pushsdk/b/b/c;->d:[Ljava/lang/Class;

    return-void
.end method

.method private a(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_48

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_11

    const-class p1, Ljava/lang/Boolean;

    return-object p1

    :cond_11
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_18

    const-class p1, Ljava/lang/Integer;

    return-object p1

    :cond_18
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_1f

    const-class p1, Ljava/lang/Long;

    return-object p1

    :cond_1f
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_26

    const-class p1, Ljava/lang/Short;

    return-object p1

    :cond_26
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_2d

    const-class p1, Ljava/lang/Byte;

    return-object p1

    :cond_2d
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_34

    const-class p1, Ljava/lang/Double;

    return-object p1

    :cond_34
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_3b

    const-class p1, Ljava/lang/Float;

    return-object p1

    :cond_3b
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_42

    const-class p1, Ljava/lang/Character;

    return-object p1

    :cond_42
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_48

    const-class p1, Ljava/lang/Void;

    :cond_48
    return-object p1
.end method

.method private a()Ljava/lang/reflect/Method;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/b/b/c;->b:Lcom/meizu/cloud/pushsdk/b/b/a;

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/b/b/a;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_d
    if-ge v4, v2, :cond_1f

    aget-object v5, v1, v4

    iget-object v6, p0, Lcom/meizu/cloud/pushsdk/b/b/c;->c:Ljava/lang/String;

    iget-object v7, p0, Lcom/meizu/cloud/pushsdk/b/b/c;->d:[Ljava/lang/Class;

    invoke-direct {p0, v5, v6, v7}, Lcom/meizu/cloud/pushsdk/b/b/c;->a(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1c

    return-object v5

    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_1f
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    :goto_24
    if-ge v3, v2, :cond_36

    aget-object v4, v1, v3

    iget-object v5, p0, Lcom/meizu/cloud/pushsdk/b/b/c;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/meizu/cloud/pushsdk/b/b/c;->d:[Ljava/lang/Class;

    invoke-direct {p0, v4, v5, v6}, Lcom/meizu/cloud/pushsdk/b/b/c;->a(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_33

    return-object v4

    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_36
    new-instance v1, Ljava/lang/NoSuchMethodException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No similar method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/b/b/c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with params "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/b/b/c;->d:[Ljava/lang/Class;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " could be found on type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private a(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/meizu/cloud/pushsdk/b/b/c;->a([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1
.end method

.method private a([Ljava/lang/Class;[Ljava/lang/Class;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_28

    move v0, v2

    :goto_6
    array-length v1, p2

    if-ge v0, v1, :cond_26

    aget-object v1, p2, v0

    const-class v3, Lcom/meizu/cloud/pushsdk/b/b/c$a;

    if-ne v1, v3, :cond_10

    goto :goto_22

    :cond_10
    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lcom/meizu/cloud/pushsdk/b/b/c;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    aget-object v3, p2, v0

    invoke-direct {p0, v3}, Lcom/meizu/cloud/pushsdk/b/b/c;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_25

    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_25
    return v2

    :cond_26
    const/4 p1, 0x1

    return p1

    :cond_28
    return v2
.end method

.method private b()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/b/b/c;->b:Lcom/meizu/cloud/pushsdk/b/b/a;

    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/b/b/a;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/b/b/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/b/b/c;->d:[Ljava/lang/Class;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v2, :cond_26

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public varargs a(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/meizu/cloud/pushsdk/b/b/d;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/meizu/cloud/pushsdk/b/b/d<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/meizu/cloud/pushsdk/b/b/d;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/b/b/d;-><init>()V

    :try_start_5
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/b/b/c;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/meizu/cloud/pushsdk/b/b/c;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    if-nez v2, :cond_4a

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/b/b/c;->d:[Ljava/lang/Class;

    array-length v2, v2

    array-length v3, p2

    if-ne v2, v3, :cond_28

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/b/b/c;->b:Lcom/meizu/cloud/pushsdk/b/b/a;

    invoke-virtual {v2}, Lcom/meizu/cloud/pushsdk/b/b/a;->a()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/b/b/c;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/meizu/cloud/pushsdk/b/b/c;->d:[Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    goto :goto_45

    :cond_28
    array-length v2, p2

    if-lez v2, :cond_41

    array-length v2, p2

    new-array v2, v2, [Ljava/lang/Class;

    iput-object v2, p0, Lcom/meizu/cloud/pushsdk/b/b/c;->d:[Ljava/lang/Class;

    const/4 v2, 0x0

    :goto_31
    array-length v3, p2

    if-ge v2, v3, :cond_41

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/b/b/c;->d:[Ljava/lang/Class;

    aget-object v4, p2, v2

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    :cond_41
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/b/b/c;->a()Ljava/lang/reflect/Method;

    move-result-object v2

    :goto_45
    sget-object v3, Lcom/meizu/cloud/pushsdk/b/b/c;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4a
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/meizu/cloud/pushsdk/b/b/d;->b:Ljava/lang/Object;

    iput-boolean v1, v0, Lcom/meizu/cloud/pushsdk/b/b/d;->a:Z
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_56} :catch_57

    goto :goto_72

    :catch_57
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invoke exception, "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ReflectMethod"

    invoke-static {p2, p1}, Lcom/meizu/cloud/pushinternal/DebugLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_72
    return-object v0
.end method

.method public varargs a([Ljava/lang/Object;)Lcom/meizu/cloud/pushsdk/b/b/d;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/meizu/cloud/pushsdk/b/b/d<",
            "TT;>;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/b/b/c;->b:Lcom/meizu/cloud/pushsdk/b/b/a;

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/b/b/a;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/meizu/cloud/pushsdk/b/b/c;->a(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/meizu/cloud/pushsdk/b/b/d;

    move-result-object p1
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p1

    :catch_b
    new-instance p1, Lcom/meizu/cloud/pushsdk/b/b/d;

    invoke-direct {p1}, Lcom/meizu/cloud/pushsdk/b/b/d;-><init>()V

    return-object p1
.end method
