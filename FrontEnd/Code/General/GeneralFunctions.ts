
export function sentData(url: string, data: object): Promise<object> {
    return fetch(url, {
        headers: {
            'content-type': 'application/json',
            'accept':       'application/json'
        },
        body:        JSON.stringify(data, null, '\t'), 
        cache:       'no-cache',
        credentials: 'same-origin',
        method:      'POST', 
        mode:        'cors', 
        redirect:    'follow',
        referrer:    'no-referrer',
    })
    .then(response => response.json() )
}

export function toTitleCase(data: string): string {
    return data.replace(/\w\S*/g, text => text.charAt(0).toUpperCase() + text.substr(1).toLowerCase())
}
