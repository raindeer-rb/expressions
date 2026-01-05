<a href="https://rubygems.org/gems/expressions" title="Install gem"><img src="https://badge.fury.io/rb/expressions.svg" alt="Gem version" height="18"></a>

<p align="center"><img src="assets/logo/expressions.svg" alt="Expressions logo" height="200"/></p>

# Expressions

Expressions evaluate into useful objects via a query builder like interface.

**Expressions** provides an API for expression types. You can build your own `Expression`, or use expressions created via the gems below:

## Type Expression

```ruby
# Via method definition:
def method(my_var: MyType); end

# Via type() helper:
my_var = type MyType | fetch_my_object(id: 123)
```

`my_var` is now type checked to be of type MyType when assigned to.

ℹ️ **Requires:** [LowType](https://github.com/low-rb/low_type)

## Dependency Expression

```ruby
def method(my_var: Dependency); end
```

`my_var` is now automatically assigned to via dependency injection.

ℹ️ **Requires:** [LowType](https://github.com/low-rb/low_type) and [LowDependency](https://github.com/low-rb/low_dependency)

## Data Expression [UNRELEASED]

The table expression inverts the usual database query logic. Instead of building a query of what we want from the database, we build the table we want and let the expression build the query.

```ruby
table(:username > :title | :body)
```

The above expression builds a ORM query to right join the user table into the articles table and results in a list of articles with the user's username in each row

ℹ️ **Requires:** [LowData](https://github.com/low-rb/low_data)

## API

Inherit from `Expressions::Expression` and define a hook/callback:

| Hook / callback method                | Trigger                            |
----------------------------------------|------------------------------------|
| `def union_expression(expression)`    | `MyExpression \| MyExpression[]` |
| `def union_value(value)`              | `MyExpression \| :my_value`      |
| `def union_type(type)`                | `MyExpression \| MyType`         |
| `def gt_expression(expression)`       | `MyExpression > MyExpression[]`  |
| `def gt_value(value)`                 | `MyExpression > :my_value`       |
| `def gt_type(type)`                   | `MyExpression > MyType`          |
| `def gt_or_et_expression(expression)` | `MyExpression >= MyExpression[]` |
| `def gt_or_et_value(value)`           | `MyExpression >= :my_value`      |
| `def gt_or_et_type(type)`             | `MyExpression >= MyType`         |
| `def lt_expression(expression)`       | `MyExpression < MyExpression[]`  |
| `def lt_value(value)`                 | `MyExpression < :my_value`       |
| `def lt_type(type)`                   | `MyExpression < MyType`          |
| `def lt_or_et_expression(expression)` | `MyExpression <= MyExpression[]` |
| `def lt_or_et_value(value)`           | `MyExpression <= :my_value`      |
| `def lt_or_et_type(type)`             | `MyExpression <= MyType`         |

## Installation

Gems using Expressions will do this step for you, but if you'd like to build your own expression then add `gem 'expressions'` to your Gemfile and run:

```
bundle install
```
