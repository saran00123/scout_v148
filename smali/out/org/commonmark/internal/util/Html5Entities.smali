.class public Lorg/commonmark/internal/util/Html5Entities;
.super Ljava/lang/Object;
.source "Html5Entities.java"


# static fields
.field private static final ENTITY_PATH:Ljava/lang/String; = "/org/commonmark/internal/util/entities.properties"

.field private static final NAMED_CHARACTER_REFERENCES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NUMERIC_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    invoke-static {}, Lorg/commonmark/internal/util/Html5Entities;->readEntities()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/commonmark/internal/util/Html5Entities;->NAMED_CHARACTER_REFERENCES:Ljava/util/Map;

    const-string v0, "^&#[Xx]?"

    .line 16
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/commonmark/internal/util/Html5Entities;->NUMERIC_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static entityToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "\ufffd"

    .line 20
    sget-object v1, Lorg/commonmark/internal/util/Html5Entities;->NUMERIC_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 22
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3a

    .line 23
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_19

    const/16 v2, 0xa

    goto :goto_1b

    :cond_19
    const/16 v2, 0x10

    .line 25
    :goto_1b
    :try_start_1b
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_2f

    return-object v0

    .line 29
    :cond_2f
    new-instance v1, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([C)V
    :try_end_38
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_38} :catch_39

    return-object v1

    :catch_39
    return-object v0

    .line 34
    :cond_3a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 35
    sget-object v1, Lorg/commonmark/internal/util/Html5Entities;->NAMED_CHARACTER_REFERENCES:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4e

    return-object v0

    :cond_4e
    return-object p0
.end method

.method private static readEntities()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 46
    const-class v1, Lorg/commonmark/internal/util/Html5Entities;

    const-string v2, "/org/commonmark/internal/util/entities.properties"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "UTF-8"

    .line 47
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 48
    :try_start_13
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1d} :catch_5f

    const/4 v1, 0x0

    .line 50
    :goto_1e
    :try_start_1e
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_40

    .line 51
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2b

    goto :goto_1e

    :cond_2b
    const-string v4, "="

    .line 54
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    .line 55
    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    .line 56
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_3f} :catch_4d
    .catchall {:try_start_1e .. :try_end_3f} :catchall_4b

    goto :goto_1e

    .line 59
    :cond_40
    :try_start_40
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_5f

    const-string v1, "NewLine"

    const-string v2, "\n"

    .line 62
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :catchall_4b
    move-exception v0

    goto :goto_50

    :catch_4d
    move-exception v0

    move-object v1, v0

    .line 48
    :try_start_4f
    throw v1
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4b

    :goto_50
    if-eqz v1, :cond_5b

    .line 59
    :try_start_52
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_55} :catch_56
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_5f

    goto :goto_5e

    :catch_56
    move-exception v2

    :try_start_57
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5e

    :cond_5b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :goto_5e
    throw v0
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5f} :catch_5f

    :catch_5f
    move-exception v0

    .line 60
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed reading data for HTML named character references"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
