.class public abstract Lio/noties/markwon/html/jsoup/nodes/CommonMarkEntities;
.super Ljava/lang/Object;
.source "CommonMarkEntities.java"


# static fields
.field private static final COMMONMARK_NAMED_ENTITIES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 37
    :try_start_0
    const-class v0, Lorg/commonmark/internal/util/Html5Entities;

    const-string v1, "NAMED_CHARACTER_REFERENCES"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_1d

    :catch_14
    move-exception v0

    .line 42
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    .line 43
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    .line 45
    :goto_1d
    sput-object v0, Lio/noties/markwon/html/jsoup/nodes/CommonMarkEntities;->COMMONMARK_NAMED_ENTITIES:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static codepointsForName(Ljava/lang/String;[I)I
    .registers 6
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 18
    sget-object v0, Lio/noties/markwon/html/jsoup/nodes/CommonMarkEntities;->COMMONMARK_NAMED_ENTITIES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p0, :cond_26

    .line 20
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    aput p0, p1, v0

    goto :goto_25

    .line 24
    :cond_19
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput v3, p1, v0

    .line 25
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    aput p0, p1, v2

    :goto_25
    return v1

    :cond_26
    return v0
.end method

.method public static isNamedEntity(Ljava/lang/String;)Z
    .registers 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 14
    sget-object v0, Lio/noties/markwon/html/jsoup/nodes/CommonMarkEntities;->COMMONMARK_NAMED_ENTITIES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
