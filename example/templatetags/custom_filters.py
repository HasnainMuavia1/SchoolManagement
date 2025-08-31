from django import template

register = template.Library()

@register.filter
def split_by_comma(value):
    """Split a comma-separated string into a list for iteration in templates."""
    if value is None:
        return []
    if isinstance(value, str):
        return [item.strip() for item in value.split(',') if item.strip()]
    return value
