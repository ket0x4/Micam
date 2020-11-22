.class public Lmiui/reflect/Field;
.super Ljava/lang/Object;
.source "Field.java"


# instance fields
.field private final mField:Ljava/lang/reflect/Field;


# direct methods
.method private constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lmiui/reflect/Field;->mField:Ljava/lang/reflect/Field;

    return-void
.end method

.method public static of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lmiui/reflect/Field;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lmiui/reflect/Field;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/reflect/NoSuchFieldException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lmiui/reflect/Field;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/reflect/NoSuchFieldException;
        }
    .end annotation

    .line 55
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    .line 56
    new-instance v0, Lmiui/reflect/Field;

    invoke-direct {v0, p2}, Lmiui/reflect/Field;-><init>(Ljava/lang/reflect/Field;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 59
    :catch_0
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 60
    new-instance p1, Lmiui/reflect/Field;

    invoke-direct {p1, p0}, Lmiui/reflect/Field;-><init>(Ljava/lang/reflect/Field;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p0

    .line 62
    new-instance p1, Lmiui/reflect/NoSuchFieldException;

    invoke-virtual {p0}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lmiui/reflect/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/reflect/NoSuchFieldException;,
            Lmiui/reflect/NoSuchClassException;
        }
    .end annotation

    .line 82
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 83
    invoke-static {p0, p1, p2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 85
    new-instance p1, Lmiui/reflect/NoSuchClassException;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lmiui/reflect/NoSuchClassException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/reflect/IllegalArgumentException;
        }
    .end annotation

    .line 523
    new-instance p0, Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0
.end method

.method public getInt(Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/reflect/IllegalArgumentException;
        }
    .end annotation

    .line 424
    iget-object v0, p0, Lmiui/reflect/Field;->mField:Ljava/lang/reflect/Field;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    .line 428
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 429
    iget-object p0, p0, Lmiui/reflect/Field;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    .line 433
    :cond_1
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return v1

    :catch_0
    move-exception p0

    .line 435
    new-instance p1, Lmiui/reflect/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lmiui/reflect/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
